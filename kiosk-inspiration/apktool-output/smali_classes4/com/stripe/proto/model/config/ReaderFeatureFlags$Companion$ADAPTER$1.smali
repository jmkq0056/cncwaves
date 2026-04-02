.class public final Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ReaderFeatureFlags.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ReaderFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderFeatureFlags.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderFeatureFlags.kt\ncom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5223:1\n463#2,7:5224\n1#3:5231\n*S KotlinDebug\n*F\n+ 1 ReaderFeatureFlags.kt\ncom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1\n*L\n4565#1:5224,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
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
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 4017
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/config_model.proto"

    .line 4011
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.ReaderFeatureFlags"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 155

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5224
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v8, v3

    move v9, v8

    move v10, v9

    move v11, v10

    move v14, v11

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    move/from16 v31, v30

    move/from16 v32, v31

    move/from16 v33, v32

    move/from16 v34, v33

    move/from16 v35, v34

    move/from16 v36, v35

    move/from16 v37, v36

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v45, v44

    move/from16 v46, v45

    move/from16 v47, v46

    move/from16 v48, v47

    move/from16 v49, v48

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v71, v68

    move/from16 v72, v71

    move/from16 v73, v72

    move/from16 v74, v73

    move/from16 v75, v74

    move/from16 v76, v75

    move/from16 v81, v76

    move/from16 v84, v81

    move/from16 v85, v84

    move/from16 v86, v85

    move/from16 v87, v86

    move/from16 v88, v87

    move/from16 v89, v88

    move/from16 v90, v89

    move/from16 v93, v90

    move/from16 v94, v93

    move/from16 v97, v94

    move/from16 v100, v97

    move/from16 v101, v100

    move/from16 v106, v101

    move/from16 v108, v106

    move/from16 v109, v108

    move/from16 v110, v109

    move/from16 v111, v110

    move/from16 v112, v111

    move/from16 v113, v112

    move/from16 v114, v113

    move/from16 v115, v114

    move/from16 v116, v115

    move/from16 v117, v116

    move/from16 v118, v117

    move/from16 v119, v118

    move/from16 v120, v119

    move/from16 v121, v120

    move/from16 v122, v121

    move/from16 v123, v122

    move/from16 v124, v123

    move/from16 v125, v124

    move/from16 v126, v125

    move/from16 v127, v126

    move/from16 v128, v127

    move/from16 v129, v128

    move/from16 v130, v129

    move/from16 v131, v130

    move/from16 v132, v131

    move/from16 v133, v132

    move/from16 v134, v133

    move/from16 v135, v134

    move/from16 v136, v135

    move/from16 v137, v136

    move/from16 v138, v137

    move/from16 v139, v138

    move/from16 v140, v139

    move/from16 v141, v140

    move/from16 v144, v141

    move/from16 v145, v144

    move/from16 v146, v145

    move/from16 v147, v146

    move/from16 v148, v147

    move/from16 v153, v148

    move-wide v12, v4

    move-wide/from16 v69, v12

    move-wide/from16 v77, v69

    move-wide/from16 v79, v77

    move-wide/from16 v82, v79

    move-wide/from16 v91, v82

    move-wide/from16 v95, v91

    move-wide/from16 v98, v95

    move-wide/from16 v102, v98

    move-wide/from16 v104, v102

    move-wide/from16 v142, v104

    move-wide/from16 v149, v142

    move-wide/from16 v151, v149

    .line 5226
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 4700
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 4699
    :pswitch_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v153, v3

    goto :goto_0

    .line 4698
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v151, v3

    goto :goto_0

    .line 4697
    :pswitch_3
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v149, v3

    goto :goto_0

    .line 4696
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v148, v3

    goto :goto_0

    .line 4695
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v147, v3

    goto :goto_0

    .line 4694
    :pswitch_6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v146, v3

    goto :goto_0

    .line 4693
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v145, v3

    goto/16 :goto_0

    .line 4692
    :pswitch_8
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v144, v3

    goto/16 :goto_0

    .line 4691
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v142, v3

    goto/16 :goto_0

    .line 4690
    :pswitch_a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v141, v3

    goto/16 :goto_0

    .line 4689
    :pswitch_b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v140, v3

    goto/16 :goto_0

    .line 4688
    :pswitch_c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v139, v3

    goto/16 :goto_0

    .line 4687
    :pswitch_d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v138, v3

    goto/16 :goto_0

    .line 4686
    :pswitch_e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v137, v3

    goto/16 :goto_0

    .line 4685
    :pswitch_f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v136, v3

    goto/16 :goto_0

    .line 4684
    :pswitch_10
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v135, v3

    goto/16 :goto_0

    .line 4683
    :pswitch_11
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v134, v3

    goto/16 :goto_0

    .line 4682
    :pswitch_12
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v133, v3

    goto/16 :goto_0

    .line 4681
    :pswitch_13
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v132, v3

    goto/16 :goto_0

    .line 4680
    :pswitch_14
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v131, v3

    goto/16 :goto_0

    .line 4679
    :pswitch_15
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v130, v3

    goto/16 :goto_0

    .line 4678
    :pswitch_16
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v129, v3

    goto/16 :goto_0

    .line 4677
    :pswitch_17
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v128, v3

    goto/16 :goto_0

    .line 4676
    :pswitch_18
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v127, v3

    goto/16 :goto_0

    .line 4675
    :pswitch_19
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v126, v3

    goto/16 :goto_0

    .line 4674
    :pswitch_1a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v125, v3

    goto/16 :goto_0

    .line 4673
    :pswitch_1b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v124, v3

    goto/16 :goto_0

    .line 4672
    :pswitch_1c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v123, v3

    goto/16 :goto_0

    .line 4671
    :pswitch_1d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v122, v3

    goto/16 :goto_0

    .line 4670
    :pswitch_1e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v121, v3

    goto/16 :goto_0

    .line 4669
    :pswitch_1f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v120, v3

    goto/16 :goto_0

    .line 4668
    :pswitch_20
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v119, v3

    goto/16 :goto_0

    .line 4667
    :pswitch_21
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v118, v3

    goto/16 :goto_0

    .line 4666
    :pswitch_22
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v117, v3

    goto/16 :goto_0

    .line 4665
    :pswitch_23
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v116, v3

    goto/16 :goto_0

    .line 4664
    :pswitch_24
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v115, v3

    goto/16 :goto_0

    .line 4663
    :pswitch_25
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v114, v3

    goto/16 :goto_0

    .line 4662
    :pswitch_26
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v113, v3

    goto/16 :goto_0

    .line 4661
    :pswitch_27
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v112, v3

    goto/16 :goto_0

    .line 4660
    :pswitch_28
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v111, v3

    goto/16 :goto_0

    .line 4659
    :pswitch_29
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v110, v3

    goto/16 :goto_0

    .line 4658
    :pswitch_2a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v109, v3

    goto/16 :goto_0

    .line 4657
    :pswitch_2b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v108, v3

    goto/16 :goto_0

    .line 4656
    :pswitch_2c
    sget-object v3, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v6, v3

    goto/16 :goto_0

    .line 4655
    :pswitch_2d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v106, v3

    goto/16 :goto_0

    .line 4654
    :pswitch_2e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v104, v3

    goto/16 :goto_0

    .line 4653
    :pswitch_2f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v102, v3

    goto/16 :goto_0

    .line 4652
    :pswitch_30
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v101, v3

    goto/16 :goto_0

    .line 4651
    :pswitch_31
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v100, v3

    goto/16 :goto_0

    .line 4650
    :pswitch_32
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v98, v3

    goto/16 :goto_0

    .line 4649
    :pswitch_33
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v97, v3

    goto/16 :goto_0

    .line 4648
    :pswitch_34
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v95, v3

    goto/16 :goto_0

    .line 4647
    :pswitch_35
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v94, v3

    goto/16 :goto_0

    .line 4646
    :pswitch_36
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v93, v3

    goto/16 :goto_0

    .line 4645
    :pswitch_37
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v91, v3

    goto/16 :goto_0

    .line 4644
    :pswitch_38
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v90, v3

    goto/16 :goto_0

    .line 4643
    :pswitch_39
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v89, v3

    goto/16 :goto_0

    .line 4642
    :pswitch_3a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v88, v3

    goto/16 :goto_0

    .line 4641
    :pswitch_3b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v87, v3

    goto/16 :goto_0

    .line 4640
    :pswitch_3c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v86, v3

    goto/16 :goto_0

    .line 4639
    :pswitch_3d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v85, v3

    goto/16 :goto_0

    .line 4638
    :pswitch_3e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v84, v3

    goto/16 :goto_0

    .line 4637
    :pswitch_3f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v82, v3

    goto/16 :goto_0

    .line 4636
    :pswitch_40
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v81, v3

    goto/16 :goto_0

    .line 4635
    :pswitch_41
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v79, v3

    goto/16 :goto_0

    .line 4634
    :pswitch_42
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v77, v3

    goto/16 :goto_0

    .line 4633
    :pswitch_43
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v76, v3

    goto/16 :goto_0

    .line 4632
    :pswitch_44
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v75, v3

    goto/16 :goto_0

    .line 4631
    :pswitch_45
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v74, v3

    goto/16 :goto_0

    .line 4630
    :pswitch_46
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v73, v3

    goto/16 :goto_0

    .line 4629
    :pswitch_47
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v72, v3

    goto/16 :goto_0

    .line 4628
    :pswitch_48
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v71, v3

    goto/16 :goto_0

    .line 4627
    :pswitch_49
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide/from16 v69, v3

    goto/16 :goto_0

    .line 4626
    :pswitch_4a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v68, v3

    goto/16 :goto_0

    .line 4625
    :pswitch_4b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v67, v3

    goto/16 :goto_0

    .line 4624
    :pswitch_4c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v66, v3

    goto/16 :goto_0

    .line 4623
    :pswitch_4d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v65, v3

    goto/16 :goto_0

    .line 4622
    :pswitch_4e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v64, v3

    goto/16 :goto_0

    .line 4621
    :pswitch_4f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v63, v3

    goto/16 :goto_0

    .line 4620
    :pswitch_50
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v62, v3

    goto/16 :goto_0

    .line 4619
    :pswitch_51
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v61, v3

    goto/16 :goto_0

    .line 4618
    :pswitch_52
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v60, v3

    goto/16 :goto_0

    .line 4617
    :pswitch_53
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v59, v3

    goto/16 :goto_0

    .line 4616
    :pswitch_54
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v58, v3

    goto/16 :goto_0

    .line 4615
    :pswitch_55
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v57, v3

    goto/16 :goto_0

    .line 4614
    :pswitch_56
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v56, v3

    goto/16 :goto_0

    .line 4613
    :pswitch_57
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v55, v3

    goto/16 :goto_0

    .line 4612
    :pswitch_58
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v54, v3

    goto/16 :goto_0

    .line 4611
    :pswitch_59
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v53, v3

    goto/16 :goto_0

    .line 4610
    :pswitch_5a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v52, v3

    goto/16 :goto_0

    .line 4609
    :pswitch_5b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v51, v3

    goto/16 :goto_0

    .line 4608
    :pswitch_5c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v50, v3

    goto/16 :goto_0

    .line 4607
    :pswitch_5d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v49, v3

    goto/16 :goto_0

    .line 4606
    :pswitch_5e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v48, v3

    goto/16 :goto_0

    .line 4605
    :pswitch_5f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v47, v3

    goto/16 :goto_0

    .line 4604
    :pswitch_60
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v46, v3

    goto/16 :goto_0

    .line 4603
    :pswitch_61
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v45, v3

    goto/16 :goto_0

    .line 4602
    :pswitch_62
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v44, v3

    goto/16 :goto_0

    .line 4601
    :pswitch_63
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v43, v3

    goto/16 :goto_0

    .line 4600
    :pswitch_64
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v42, v3

    goto/16 :goto_0

    .line 4599
    :pswitch_65
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v41, v3

    goto/16 :goto_0

    .line 4598
    :pswitch_66
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v40, v3

    goto/16 :goto_0

    .line 4597
    :pswitch_67
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v39, v3

    goto/16 :goto_0

    .line 4596
    :pswitch_68
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v38, v3

    goto/16 :goto_0

    .line 4595
    :pswitch_69
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v37, v3

    goto/16 :goto_0

    .line 4594
    :pswitch_6a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v36, v3

    goto/16 :goto_0

    .line 4593
    :pswitch_6b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v35, v3

    goto/16 :goto_0

    .line 4592
    :pswitch_6c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v34, v3

    goto/16 :goto_0

    .line 4591
    :pswitch_6d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v33, v3

    goto/16 :goto_0

    .line 4590
    :pswitch_6e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v32, v3

    goto/16 :goto_0

    .line 4589
    :pswitch_6f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v31, v3

    goto/16 :goto_0

    .line 4588
    :pswitch_70
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v30, v3

    goto/16 :goto_0

    .line 4587
    :pswitch_71
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v29, v3

    goto/16 :goto_0

    .line 4586
    :pswitch_72
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v28, v3

    goto/16 :goto_0

    .line 4585
    :pswitch_73
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v27, v3

    goto/16 :goto_0

    .line 4584
    :pswitch_74
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v26, v3

    goto/16 :goto_0

    .line 4583
    :pswitch_75
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v25, v3

    goto/16 :goto_0

    .line 4582
    :pswitch_76
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v24, v3

    goto/16 :goto_0

    .line 4581
    :pswitch_77
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v23, v3

    goto/16 :goto_0

    .line 4580
    :pswitch_78
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v22, v3

    goto/16 :goto_0

    .line 4579
    :pswitch_79
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v21, v3

    goto/16 :goto_0

    .line 4578
    :pswitch_7a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v20, v3

    goto/16 :goto_0

    .line 4577
    :pswitch_7b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v19, v3

    goto/16 :goto_0

    .line 4576
    :pswitch_7c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v18, v3

    goto/16 :goto_0

    .line 4575
    :pswitch_7d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v17, v3

    goto/16 :goto_0

    .line 4574
    :pswitch_7e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v16, v3

    goto/16 :goto_0

    .line 4573
    :pswitch_7f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v15, v3

    goto/16 :goto_0

    .line 4572
    :pswitch_80
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v14, v3

    goto/16 :goto_0

    .line 4571
    :pswitch_81
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-wide v12, v3

    goto/16 :goto_0

    .line 4570
    :pswitch_82
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v11, v3

    goto/16 :goto_0

    .line 4569
    :pswitch_83
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v10, v3

    goto/16 :goto_0

    .line 4568
    :pswitch_84
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v9, v3

    goto/16 :goto_0

    .line 4567
    :pswitch_85
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v8, v3

    goto/16 :goto_0

    .line 5230
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v154

    .line 4703
    new-instance v7, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    .line 4793
    move-object/from16 v107, v6

    check-cast v107, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    .line 4703
    invoke-direct/range {v7 .. v154}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;-><init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 4011
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4158
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4159
    :cond_0
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4160
    :cond_1
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4161
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4162
    :cond_3
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4163
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4164
    :cond_5
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4165
    :cond_6
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4166
    :cond_7
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4167
    :cond_8
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4168
    :cond_9
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xb

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4169
    :cond_a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xc

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4170
    :cond_b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4171
    :cond_c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xe

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4172
    :cond_d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xf

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4173
    :cond_e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4174
    :cond_f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x11

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4175
    :cond_10
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x12

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4176
    :cond_11
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x13

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4177
    :cond_12
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x14

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4178
    :cond_13
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x15

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4179
    :cond_14
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x16

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4180
    :cond_15
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x17

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4181
    :cond_16
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x18

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4182
    :cond_17
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x19

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4183
    :cond_18
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4184
    :cond_19
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4185
    :cond_1a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4186
    :cond_1b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4187
    :cond_1c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4188
    :cond_1d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4189
    :cond_1e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4190
    :cond_1f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x21

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4191
    :cond_20
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x22

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4192
    :cond_21
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x23

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4193
    :cond_22
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x24

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4194
    :cond_23
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x25

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4195
    :cond_24
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x26

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4196
    :cond_25
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x27

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4197
    :cond_26
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x28

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4198
    :cond_27
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x2d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4199
    :cond_28
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x2e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4200
    :cond_29
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x2f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4201
    :cond_2a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x30

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4202
    :cond_2b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x31

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4203
    :cond_2c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x32

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4204
    :cond_2d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x33

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4205
    :cond_2e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x34

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4206
    :cond_2f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x35

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4207
    :cond_30
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    if-eqz v0, :cond_31

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x36

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4208
    :cond_31
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    if-eqz v0, :cond_32

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x37

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4209
    :cond_32
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    if-eqz v0, :cond_33

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x38

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4210
    :cond_33
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    if-eqz v0, :cond_34

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x39

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4211
    :cond_34
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    if-eqz v0, :cond_35

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4212
    :cond_35
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    if-eqz v0, :cond_36

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4213
    :cond_36
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    if-eqz v0, :cond_37

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4214
    :cond_37
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    if-eqz v0, :cond_38

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4215
    :cond_38
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4216
    :cond_39
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4217
    :cond_3a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x40

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4218
    :cond_3b
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x41

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4219
    :cond_3c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x42

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4220
    :cond_3d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x43

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4221
    :cond_3e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x44

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4222
    :cond_3f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    if-eqz v0, :cond_40

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x45

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4223
    :cond_40
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    if-eqz v0, :cond_41

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x46

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4224
    :cond_41
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    if-eqz v0, :cond_42

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x47

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4225
    :cond_42
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_43

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x48

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4226
    :cond_43
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_44

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x49

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4227
    :cond_44
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    if-eqz v0, :cond_45

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4228
    :cond_45
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_46

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x4b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4229
    :cond_46
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    if-eqz v0, :cond_47

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4230
    :cond_47
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    if-eqz v0, :cond_48

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4231
    :cond_48
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    if-eqz v0, :cond_49

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4232
    :cond_49
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4233
    :cond_4a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x50

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4234
    :cond_4b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x51

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4235
    :cond_4c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x52

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4236
    :cond_4d
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x53

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4237
    :cond_4e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x54

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4238
    :cond_4f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    if-eqz v0, :cond_50

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x55

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4239
    :cond_50
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_51

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x56

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4240
    :cond_51
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    if-eqz v0, :cond_52

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x57

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4241
    :cond_52
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_53

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x58

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4242
    :cond_53
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    if-eqz v0, :cond_54

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x59

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4243
    :cond_54
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    if-eqz v0, :cond_55

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x5a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4244
    :cond_55
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_56

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x5b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4245
    :cond_56
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_57

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x5c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4246
    :cond_57
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    if-eqz v0, :cond_58

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x5d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4247
    :cond_58
    iget-object v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    if-eqz v0, :cond_59

    sget-object v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x5e

    iget-object v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4248
    :cond_59
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x5f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4249
    :cond_5a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x60

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4250
    :cond_5b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    if-eqz v0, :cond_5c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x61

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4251
    :cond_5c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    if-eqz v0, :cond_5d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x62

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4252
    :cond_5d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x63

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4253
    :cond_5e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x64

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4254
    :cond_5f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    if-eqz v0, :cond_60

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x65

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4255
    :cond_60
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    if-eqz v0, :cond_61

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x66

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4256
    :cond_61
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    if-eqz v0, :cond_62

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x67

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4257
    :cond_62
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    if-eqz v0, :cond_63

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x68

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4258
    :cond_63
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    if-eqz v0, :cond_64

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x69

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4259
    :cond_64
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    if-eqz v0, :cond_65

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4260
    :cond_65
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    if-eqz v0, :cond_66

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4261
    :cond_66
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    if-eqz v0, :cond_67

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4262
    :cond_67
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    if-eqz v0, :cond_68

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4263
    :cond_68
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    if-eqz v0, :cond_69

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4264
    :cond_69
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4265
    :cond_6a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    if-eqz v0, :cond_6b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x70

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4266
    :cond_6b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x71

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4267
    :cond_6c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x72

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4268
    :cond_6d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x73

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4269
    :cond_6e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x74

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4270
    :cond_6f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    if-eqz v0, :cond_70

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x75

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4271
    :cond_70
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    if-eqz v0, :cond_71

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x76

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4272
    :cond_71
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    if-eqz v0, :cond_72

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x77

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4273
    :cond_72
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    if-eqz v0, :cond_73

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x78

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4274
    :cond_73
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    if-eqz v0, :cond_74

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x79

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4275
    :cond_74
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    if-eqz v0, :cond_75

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4276
    :cond_75
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    if-eqz v0, :cond_76

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4277
    :cond_76
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    if-eqz v0, :cond_77

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4278
    :cond_77
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    if-eqz v0, :cond_78

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4279
    :cond_78
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    if-eqz v0, :cond_79

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4280
    :cond_79
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4281
    :cond_7a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    if-eqz v0, :cond_7b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4282
    :cond_7b
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x81

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4283
    :cond_7c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x82

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4284
    :cond_7d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x83

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4285
    :cond_7e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x84

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4286
    :cond_7f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    if-eqz v0, :cond_80

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x85

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4287
    :cond_80
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    if-eqz v0, :cond_81

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x86

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4288
    :cond_81
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_82

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x87

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4289
    :cond_82
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_83

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x88

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4290
    :cond_83
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    if-eqz v0, :cond_84

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x89

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4291
    :cond_84
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 4011
    check-cast p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4295
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 4296
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x89

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4297
    :cond_0
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x88

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4298
    :cond_1
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x87

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4299
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x86

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4300
    :cond_3
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x85

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4301
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x84

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4302
    :cond_5
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x83

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4303
    :cond_6
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x82

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4304
    :cond_7
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x81

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4305
    :cond_8
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4306
    :cond_9
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4307
    :cond_a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4308
    :cond_b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4309
    :cond_c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4310
    :cond_d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4311
    :cond_e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x7a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4312
    :cond_f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x79

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4313
    :cond_10
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x78

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4314
    :cond_11
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x77

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4315
    :cond_12
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x76

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4316
    :cond_13
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x75

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4317
    :cond_14
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x74

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4318
    :cond_15
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x73

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4319
    :cond_16
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x72

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4320
    :cond_17
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x71

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4321
    :cond_18
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x70

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4322
    :cond_19
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4323
    :cond_1a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4324
    :cond_1b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4325
    :cond_1c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4326
    :cond_1d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4327
    :cond_1e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x6a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4328
    :cond_1f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x69

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4329
    :cond_20
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x68

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4330
    :cond_21
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x67

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4331
    :cond_22
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x66

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4332
    :cond_23
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x65

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4333
    :cond_24
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x64

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4334
    :cond_25
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x63

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4335
    :cond_26
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x62

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4336
    :cond_27
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x61

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4337
    :cond_28
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x60

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4338
    :cond_29
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x5f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4339
    :cond_2a
    iget-object v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x5e

    iget-object v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4340
    :cond_2b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x5d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4341
    :cond_2c
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x5c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4342
    :cond_2d
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x5b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4343
    :cond_2e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x5a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4344
    :cond_2f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x59

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4345
    :cond_30
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_31

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x58

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4346
    :cond_31
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    if-eqz v0, :cond_32

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x57

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4347
    :cond_32
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x56

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4348
    :cond_33
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    if-eqz v0, :cond_34

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x55

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4349
    :cond_34
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    if-eqz v0, :cond_35

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x54

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4350
    :cond_35
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_36

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x53

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4351
    :cond_36
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    if-eqz v0, :cond_37

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x52

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4352
    :cond_37
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    if-eqz v0, :cond_38

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x51

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4353
    :cond_38
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x50

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4354
    :cond_39
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4355
    :cond_3a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4356
    :cond_3b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4357
    :cond_3c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4358
    :cond_3d
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x4b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4359
    :cond_3e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x4a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4360
    :cond_3f
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_40

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x49

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4361
    :cond_40
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_41

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x48

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4362
    :cond_41
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    if-eqz v0, :cond_42

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x47

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4363
    :cond_42
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    if-eqz v0, :cond_43

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x46

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4364
    :cond_43
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    if-eqz v0, :cond_44

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x45

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4365
    :cond_44
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    if-eqz v0, :cond_45

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x44

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4366
    :cond_45
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    if-eqz v0, :cond_46

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x43

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4367
    :cond_46
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    if-eqz v0, :cond_47

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x42

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4368
    :cond_47
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_48

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x41

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4369
    :cond_48
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    if-eqz v0, :cond_49

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x40

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4370
    :cond_49
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4371
    :cond_4a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4372
    :cond_4b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4373
    :cond_4c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4374
    :cond_4d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4375
    :cond_4e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4376
    :cond_4f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    if-eqz v0, :cond_50

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x39

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4377
    :cond_50
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    if-eqz v0, :cond_51

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x38

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4378
    :cond_51
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    if-eqz v0, :cond_52

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x37

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4379
    :cond_52
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    if-eqz v0, :cond_53

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x36

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4380
    :cond_53
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    if-eqz v0, :cond_54

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x35

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4381
    :cond_54
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    if-eqz v0, :cond_55

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x34

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4382
    :cond_55
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    if-eqz v0, :cond_56

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x33

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4383
    :cond_56
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    if-eqz v0, :cond_57

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x32

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4384
    :cond_57
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    if-eqz v0, :cond_58

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x31

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4385
    :cond_58
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    if-eqz v0, :cond_59

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x30

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4386
    :cond_59
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x2f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4387
    :cond_5a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x2e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4388
    :cond_5b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    if-eqz v0, :cond_5c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x2d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4389
    :cond_5c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    if-eqz v0, :cond_5d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x28

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4390
    :cond_5d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x27

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4391
    :cond_5e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x26

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4392
    :cond_5f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    if-eqz v0, :cond_60

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x25

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4393
    :cond_60
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    if-eqz v0, :cond_61

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x24

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4394
    :cond_61
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    if-eqz v0, :cond_62

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x23

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4395
    :cond_62
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    if-eqz v0, :cond_63

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x22

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4396
    :cond_63
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    if-eqz v0, :cond_64

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x21

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4397
    :cond_64
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    if-eqz v0, :cond_65

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4398
    :cond_65
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    if-eqz v0, :cond_66

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1f

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4399
    :cond_66
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    if-eqz v0, :cond_67

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1e

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4400
    :cond_67
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    if-eqz v0, :cond_68

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1d

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4401
    :cond_68
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    if-eqz v0, :cond_69

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4402
    :cond_69
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4403
    :cond_6a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    if-eqz v0, :cond_6b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x1a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4404
    :cond_6b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x19

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4405
    :cond_6c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x18

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4406
    :cond_6d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x17

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4407
    :cond_6e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x16

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4408
    :cond_6f
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    if-eqz v0, :cond_70

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x15

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4409
    :cond_70
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    if-eqz v0, :cond_71

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x14

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4410
    :cond_71
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    if-eqz v0, :cond_72

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x13

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4411
    :cond_72
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    if-eqz v0, :cond_73

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x12

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4412
    :cond_73
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    if-eqz v0, :cond_74

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x11

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4413
    :cond_74
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    if-eqz v0, :cond_75

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4414
    :cond_75
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    if-eqz v0, :cond_76

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xf

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4415
    :cond_76
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    if-eqz v0, :cond_77

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xe

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4416
    :cond_77
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    if-eqz v0, :cond_78

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4417
    :cond_78
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    if-eqz v0, :cond_79

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xc

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4418
    :cond_79
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xb

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4419
    :cond_7a
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    if-eqz v0, :cond_7b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4420
    :cond_7b
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    if-eqz v0, :cond_7c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4421
    :cond_7c
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4422
    :cond_7d
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4423
    :cond_7e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4424
    :cond_7f
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_80

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4425
    :cond_80
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    if-eqz v0, :cond_81

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4426
    :cond_81
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    if-eqz v0, :cond_82

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4427
    :cond_82
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    if-eqz v0, :cond_83

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 4428
    :cond_83
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    if-eqz v0, :cond_84

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean p2, p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_84
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 4011
    check-cast p2, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4020
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 4021
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4022
    :cond_0
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4023
    :cond_1
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4024
    :cond_2
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4025
    :cond_3
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4026
    :cond_4
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4027
    :cond_5
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4028
    :cond_6
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4029
    :cond_7
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4030
    :cond_8
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4031
    :cond_9
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4032
    :cond_a
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0xc

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4033
    :cond_b
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0xd

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4034
    :cond_c
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4035
    :cond_d
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0xf

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4036
    :cond_e
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x10

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4037
    :cond_f
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x11

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4038
    :cond_10
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    if-eqz v1, :cond_11

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x12

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4039
    :cond_11
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    if-eqz v1, :cond_12

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x13

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4040
    :cond_12
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    if-eqz v1, :cond_13

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x14

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4041
    :cond_13
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    if-eqz v1, :cond_14

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x15

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4042
    :cond_14
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    if-eqz v1, :cond_15

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x16

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4043
    :cond_15
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    if-eqz v1, :cond_16

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x17

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4044
    :cond_16
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    if-eqz v1, :cond_17

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x18

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4045
    :cond_17
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    if-eqz v1, :cond_18

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x19

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4046
    :cond_18
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    if-eqz v1, :cond_19

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x1a

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4047
    :cond_19
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x1b

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4048
    :cond_1a
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x1c

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4049
    :cond_1b
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x1d

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4050
    :cond_1c
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x1e

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4051
    :cond_1d
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x1f

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4052
    :cond_1e
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x20

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4053
    :cond_1f
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    if-eqz v1, :cond_20

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x21

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4054
    :cond_20
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    if-eqz v1, :cond_21

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x22

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4055
    :cond_21
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    if-eqz v1, :cond_22

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x23

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4056
    :cond_22
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    if-eqz v1, :cond_23

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x24

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4057
    :cond_23
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    if-eqz v1, :cond_24

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x25

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4058
    :cond_24
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    if-eqz v1, :cond_25

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x26

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4059
    :cond_25
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x27

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4060
    :cond_26
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    if-eqz v1, :cond_27

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x28

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4061
    :cond_27
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    if-eqz v1, :cond_28

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x2d

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4062
    :cond_28
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    if-eqz v1, :cond_29

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x2e

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4063
    :cond_29
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x2f

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4064
    :cond_2a
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x30

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4065
    :cond_2b
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x31

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4066
    :cond_2c
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x32

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4067
    :cond_2d
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x33

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4068
    :cond_2e
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x34

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4069
    :cond_2f
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    if-eqz v1, :cond_30

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x35

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4070
    :cond_30
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    if-eqz v1, :cond_31

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x36

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4071
    :cond_31
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    if-eqz v1, :cond_32

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x37

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4072
    :cond_32
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    if-eqz v1, :cond_33

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x38

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4073
    :cond_33
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    if-eqz v1, :cond_34

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x39

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4074
    :cond_34
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    if-eqz v1, :cond_35

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x3a

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4075
    :cond_35
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    if-eqz v1, :cond_36

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x3b

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4076
    :cond_36
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    if-eqz v1, :cond_37

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x3c

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4077
    :cond_37
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    if-eqz v1, :cond_38

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x3d

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4078
    :cond_38
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    if-eqz v1, :cond_39

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x3e

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4079
    :cond_39
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x3f

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4080
    :cond_3a
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x40

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4081
    :cond_3b
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x41

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4082
    :cond_3c
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x42

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4083
    :cond_3d
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x43

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4084
    :cond_3e
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x44

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4085
    :cond_3f
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    if-eqz v1, :cond_40

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x45

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4086
    :cond_40
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    if-eqz v1, :cond_41

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x46

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4087
    :cond_41
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    if-eqz v1, :cond_42

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x47

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4088
    :cond_42
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_43

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x48

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4089
    :cond_43
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_44

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x49

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4090
    :cond_44
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    if-eqz v1, :cond_45

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x4a

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4091
    :cond_45
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_46

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x4b

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4092
    :cond_46
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    if-eqz v1, :cond_47

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x4c

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4093
    :cond_47
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    if-eqz v1, :cond_48

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x4d

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4094
    :cond_48
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    if-eqz v1, :cond_49

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x4e

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4095
    :cond_49
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x4f

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4096
    :cond_4a
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    if-eqz v1, :cond_4b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x50

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4097
    :cond_4b
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    if-eqz v1, :cond_4c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x51

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4098
    :cond_4c
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    if-eqz v1, :cond_4d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x52

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4099
    :cond_4d
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x53

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4100
    :cond_4e
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    if-eqz v1, :cond_4f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x54

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4101
    :cond_4f
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    if-eqz v1, :cond_50

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x55

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4102
    :cond_50
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_51

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x56

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4103
    :cond_51
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    if-eqz v1, :cond_52

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x57

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4104
    :cond_52
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_53

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x58

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4105
    :cond_53
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    if-eqz v1, :cond_54

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x59

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4106
    :cond_54
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    if-eqz v1, :cond_55

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x5a

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4107
    :cond_55
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_56

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x5b

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4108
    :cond_56
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_57

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x5c

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4109
    :cond_57
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    if-eqz v1, :cond_58

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x5d

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4110
    :cond_58
    iget-object v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    if-eqz v1, :cond_59

    sget-object v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x5e

    iget-object v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-virtual {v1, v2, v5}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4111
    :cond_59
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    if-eqz v1, :cond_5a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x5f

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4112
    :cond_5a
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    if-eqz v1, :cond_5b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x60

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4113
    :cond_5b
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    if-eqz v1, :cond_5c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x61

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4114
    :cond_5c
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    if-eqz v1, :cond_5d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x62

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4115
    :cond_5d
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    if-eqz v1, :cond_5e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x63

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4116
    :cond_5e
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    if-eqz v1, :cond_5f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x64

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4117
    :cond_5f
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    if-eqz v1, :cond_60

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x65

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4118
    :cond_60
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    if-eqz v1, :cond_61

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x66

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4119
    :cond_61
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    if-eqz v1, :cond_62

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x67

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4120
    :cond_62
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    if-eqz v1, :cond_63

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x68

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4121
    :cond_63
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    if-eqz v1, :cond_64

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x69

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4122
    :cond_64
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    if-eqz v1, :cond_65

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x6a

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4123
    :cond_65
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    if-eqz v1, :cond_66

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x6b

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4124
    :cond_66
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    if-eqz v1, :cond_67

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x6c

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4125
    :cond_67
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    if-eqz v1, :cond_68

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x6d

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4126
    :cond_68
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    if-eqz v1, :cond_69

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x6e

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4127
    :cond_69
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    if-eqz v1, :cond_6a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x6f

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4128
    :cond_6a
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    if-eqz v1, :cond_6b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x70

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4129
    :cond_6b
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    if-eqz v1, :cond_6c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x71

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4130
    :cond_6c
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    if-eqz v1, :cond_6d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x72

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4131
    :cond_6d
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    if-eqz v1, :cond_6e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x73

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4132
    :cond_6e
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    if-eqz v1, :cond_6f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x74

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4133
    :cond_6f
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    if-eqz v1, :cond_70

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x75

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4134
    :cond_70
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    if-eqz v1, :cond_71

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x76

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4135
    :cond_71
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    if-eqz v1, :cond_72

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x77

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4136
    :cond_72
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    if-eqz v1, :cond_73

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x78

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4137
    :cond_73
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    if-eqz v1, :cond_74

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x79

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4138
    :cond_74
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    if-eqz v1, :cond_75

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x7a

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4139
    :cond_75
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    if-eqz v1, :cond_76

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x7b

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4140
    :cond_76
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    if-eqz v1, :cond_77

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x7c

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4141
    :cond_77
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    if-eqz v1, :cond_78

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x7d

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4142
    :cond_78
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    if-eqz v1, :cond_79

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x7e

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4143
    :cond_79
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    if-eqz v1, :cond_7a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x7f

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4144
    :cond_7a
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    if-eqz v1, :cond_7b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x80

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4145
    :cond_7b
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x81

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4146
    :cond_7c
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    if-eqz v1, :cond_7d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x82

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4147
    :cond_7d
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    if-eqz v1, :cond_7e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x83

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4148
    :cond_7e
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    if-eqz v1, :cond_7f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x84

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4149
    :cond_7f
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    if-eqz v1, :cond_80

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x85

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4150
    :cond_80
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    if-eqz v1, :cond_81

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v5, 0x86

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4151
    :cond_81
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_82

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x87

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4152
    :cond_82
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_83

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x88

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4153
    :cond_83
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    if-eqz v1, :cond_84

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean p1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v2, 0x89

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_84
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 4011
    check-cast p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 155

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4842
    iget-object v0, v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v101, v0

    .line 4843
    sget-object v148, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v153, 0x1f

    const/16 v154, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const-wide/16 v71, 0x0

    const-wide/16 v73, 0x0

    const/16 v75, 0x0

    const-wide/16 v76, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const-wide/16 v85, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const-wide/16 v89, 0x0

    const/16 v91, 0x0

    const-wide/16 v92, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const-wide/16 v96, 0x0

    const-wide/16 v98, 0x0

    const/16 v100, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0x0

    const/16 v134, 0x0

    const/16 v135, 0x0

    const-wide/16 v136, 0x0

    const/16 v138, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const/16 v142, 0x0

    const-wide/16 v143, 0x0

    const-wide/16 v145, 0x0

    const/16 v147, 0x0

    const/16 v149, -0x1

    const/16 v150, -0x1

    const v151, -0x2000001

    const/16 v152, -0x1

    .line 4841
    invoke-static/range {v1 .. v154}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->copy$default(Lcom/stripe/proto/model/config/ReaderFeatureFlags;ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;IIIIILjava/lang/Object;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4011
    check-cast p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object p1

    return-object p1
.end method
