.class public final Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;
.super Ljava/lang/Object;
.source "KmpCollectInputsResultTransformer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKmpCollectInputsResultTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KmpCollectInputsResultTransformer.kt\ncom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,166:1\n1549#2:167\n1620#2,3:168\n1549#2:171\n1620#2,3:172\n*S KotlinDebug\n*F\n+ 1 KmpCollectInputsResultTransformer.kt\ncom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer\n*L\n76#1:167\n76#1:168,3\n87#1:171\n87#1:172,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;",
        "",
        "()V",
        "transform",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;",
        "collectInputsResultInternal",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;",
        "transformSuccess",
        "successfullyCompleted",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;",
        "transformToggles",
        "",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
        "toggles",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;",
        "jackrabbitclient_release"
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
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final transformSuccess(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;
    .locals 9

    .line 87
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;->inputs:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 172
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 173
    check-cast v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;

    .line 89
    iget-boolean v2, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    const/4 v3, 0x0

    if-nez v2, :cond_6

    const/4 v2, 0x6

    .line 90
    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->signature:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;->value_:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 91
    iget-object v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->selection:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;->value_:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_2
    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 92
    iget-object v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->email:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;->value_:Ljava/lang/String;

    goto :goto_3

    :cond_2
    move-object v4, v3

    :goto_3
    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 93
    iget-object v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->phone:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;->value_:Ljava/lang/String;

    goto :goto_4

    :cond_3
    move-object v4, v3

    :goto_4
    const/4 v5, 0x3

    aput-object v4, v2, v5

    .line 94
    iget-object v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;->value_:Ljava/lang/String;

    goto :goto_5

    :cond_4
    move-object v4, v3

    :goto_5
    const/4 v5, 0x4

    aput-object v4, v2, v5

    .line 95
    iget-object v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->numeric:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;->value_:Ljava/lang/String;

    goto :goto_6

    :cond_5
    move-object v4, v3

    :goto_6
    const/4 v5, 0x5

    aput-object v4, v2, v5

    .line 89
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 96
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    new-instance p1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;

    .line 99
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 100
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "received null form result for unskipped form: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->type:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 99
    invoke-direct/range {v2 .. v7}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    invoke-direct {p1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;)V

    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object p1

    .line 106
    :cond_6
    iget-object v2, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->type:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;

    sget-object v4, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$InputType;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 155
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;

    .line 156
    iget-boolean v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    .line 157
    iget-object v5, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->phone:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;

    if-eqz v5, :cond_7

    iget-object v3, v5, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Phone;->value_:Ljava/lang/String;

    .line 158
    :cond_7
    iget-object v1, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 155
    invoke-direct {v2, v4, v3, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;

    goto :goto_7

    .line 147
    :pswitch_1
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericResult;

    .line 148
    iget-boolean v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    .line 149
    iget-object v5, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->numeric:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;

    if-eqz v5, :cond_8

    iget-object v3, v5, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Numeric;->value_:Ljava/lang/String;

    .line 150
    :cond_8
    iget-object v1, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 147
    invoke-direct {v2, v4, v3, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/NumericResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;

    goto :goto_7

    .line 139
    :pswitch_2
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/models/TextResult;

    .line 140
    iget-boolean v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    .line 141
    iget-object v5, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->text:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;

    if-eqz v5, :cond_9

    iget-object v3, v5, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Text;->value_:Ljava/lang/String;

    .line 142
    :cond_9
    iget-object v1, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 139
    invoke-direct {v2, v4, v3, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/TextResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;

    goto :goto_7

    .line 131
    :pswitch_3
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailResult;

    .line 132
    iget-boolean v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    .line 133
    iget-object v5, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->email:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;

    if-eqz v5, :cond_a

    iget-object v3, v5, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Email;->value_:Ljava/lang/String;

    .line 134
    :cond_a
    iget-object v1, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-direct {v2, v4, v3, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/EmailResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;

    goto :goto_7

    .line 123
    :pswitch_4
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionResult;

    .line 124
    iget-boolean v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    .line 125
    iget-object v5, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->selection:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;

    if-eqz v5, :cond_b

    iget-object v3, v5, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Selection;->value_:Ljava/lang/String;

    .line 126
    :cond_b
    iget-object v1, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-direct {v2, v4, v3, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;

    goto :goto_7

    .line 115
    :pswitch_5
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureResult;

    .line 116
    iget-boolean v4, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->skipped:Z

    .line 117
    iget-object v5, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->signature:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;

    if-eqz v5, :cond_c

    iget-object v3, v5, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Signature;->value_:Ljava/lang/String;

    .line 118
    :cond_c
    iget-object v1, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input;->toggles:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;->transformToggles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-direct {v2, v4, v3, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;

    .line 173
    :goto_7
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 108
    :pswitch_6
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 109
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 108
    const-string v5, "collect input type is invalid"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 174
    :cond_d
    check-cast v0, Ljava/util/List;

    .line 163
    new-instance p1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultSuccess;

    invoke-direct {p1, v0}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultSuccess;-><init>(Ljava/util/List;)V

    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final transformToggles(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;",
            ">;"
        }
    .end annotation

    .line 76
    check-cast p1, Ljava/lang/Iterable;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 169
    check-cast v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;

    .line 77
    iget-object v1, v1, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;->value_:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle$Value;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_1
    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 81
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 79
    :cond_2
    sget-object v1, Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;->DISABLED:Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;

    goto :goto_3

    .line 78
    :cond_3
    sget-object v1, Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;->ENABLED:Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;

    goto :goto_3

    .line 81
    :cond_4
    :goto_2
    sget-object v1, Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;->SKIPPED:Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;

    .line 169
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_5
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final transform(Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;
    .locals 7

    const-string v0, "collectInputsResultInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;

    .line 32
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 33
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 34
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    invoke-direct {v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;)V

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object v0

    .line 37
    :cond_0
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;

    .line 38
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 39
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 40
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    invoke-direct {v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;)V

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object v0

    .line 43
    :cond_1
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;

    .line 44
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 45
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_INVALID_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 46
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 44
    invoke-direct/range {v1 .. v6}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    invoke-direct {v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;)V

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object v0

    .line 49
    :cond_2
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;

    .line 50
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 51
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 52
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 50
    invoke-direct/range {v1 .. v6}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    invoke-direct {v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;)V

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object v0

    .line 55
    :cond_3
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;

    .line 56
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 57
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 58
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 56
    invoke-direct/range {v1 .. v6}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    invoke-direct {v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;)V

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object v0

    .line 61
    :cond_4
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;

    .line 62
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;

    .line 63
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 64
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    invoke-direct {v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultFailure;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;)V

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object v0

    .line 67
    :cond_5
    instance-of v0, p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Success;

    if-eqz v0, :cond_6

    .line 68
    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Success;

    invoke-virtual {p1}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Success;->getCollectInputsSuccessfullyCompleted()Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;->transformSuccess(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
