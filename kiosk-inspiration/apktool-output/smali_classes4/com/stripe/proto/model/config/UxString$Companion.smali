.class public final Lcom/stripe/proto/model/config/UxString$Companion;
.super Ljava/lang/Object;
.source "UxString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/UxString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/UxString$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/UxString;",
        "fromValue",
        "value",
        "",
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
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/model/config/UxString$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/model/config/UxString;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 159
    :pswitch_0
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_PIN_RETRIES:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 180
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CARD:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 154
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_REFUND_NOT_THROUGH:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 165
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_REFUND_DECLINED:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 133
    :pswitch_4
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INSERT_OR_TAP_TO_REFUND:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 134
    :pswitch_5
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_TOTALING_YOUR_REFUND:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 182
    :pswitch_6
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->SUMMARY_REFUNDED_TO:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 151
    :pswitch_7
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CONNECTED_TO:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 150
    :pswitch_8
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INCORRECT_PASSWORD:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 149
    :pswitch_9
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_KEYBOARD_SUB_INSTR:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 148
    :pswitch_a
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_KEYBOARD_MAIN_INSTR:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 147
    :pswitch_b
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_PLACEHOLDER_PASSWORD:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 135
    :pswitch_c
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_TOTALING_YOUR_ORDER:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 146
    :pswitch_d
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_USE_WIFI:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 123
    :pswitch_e
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INSTALLING_UPDATE_ADVICE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 122
    :pswitch_f
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INSTALLING_UPDATE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 121
    :pswitch_10
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_PREPARING_UPDATE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 120
    :pswitch_11
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_DOWNLOADING_UPDATE_ADVICE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 145
    :pswitch_12
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_RESCAN:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 179
    :pswitch_13
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_ENTER:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 178
    :pswitch_14
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_BACKSPACE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 144
    :pswitch_15
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_PASSWORD_PLACEHOLDER:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 143
    :pswitch_16
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_ENTER_WIFI_PASSWORD:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 142
    :pswitch_17
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_UNSUPPORTED_NETWORKS:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 141
    :pswitch_18
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CONNECT_TO_NETWORK:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 124
    :pswitch_19
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_SCANNING:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 119
    :pswitch_1a
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CHECKING_FOR_UPDATE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 140
    :pswitch_1b
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_TIP_CONTINUE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 139
    :pswitch_1c
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_TIP_SKIP:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 138
    :pswitch_1d
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_TIP_CUSTOM:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 177
    :pswitch_1e
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CLEAR:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 176
    :pswitch_1f
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_DONE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 137
    :pswitch_20
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_TIP:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 175
    :pswitch_21
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CREDIT:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 174
    :pswitch_22
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CHECK_OR_DEBIT:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 173
    :pswitch_23
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_SAVINGS:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 172
    :pswitch_24
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_DEFAULT:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 171
    :pswitch_25
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_SIGN_BELOW:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 181
    :pswitch_26
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->SUMMARY_CHARGED_TO:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 170
    :pswitch_27
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CHOOSE_AN_OPTION:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 169
    :pswitch_28
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CHOOSE_AN_ACCOUNT:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 168
    :pswitch_29
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_REFER_TO_DEVICE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 167
    :pswitch_2a
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_EXPIRED_CARD:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 166
    :pswitch_2b
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CARD_DECLINED:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 164
    :pswitch_2c
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_PAYMENT_DECLINED:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 163
    :pswitch_2d
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CALL_ISSUER:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 162
    :pswitch_2e
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_SERVICE_NOT_ALLOWED:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 161
    :pswitch_2f
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_PLEASE_INSERT:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 160
    :pswitch_30
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_BAD_INSERT:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 158
    :pswitch_31
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_FINAL_INVALID_PIN:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 157
    :pswitch_32
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INVALID_PIN:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 156
    :pswitch_33
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INVALID_CARD:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 155
    :pswitch_34
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_SWIPE_AGAIN:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 153
    :pswitch_35
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_PAYMENT_NOT_THROUGH:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 152
    :pswitch_36
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_SOMETHING_WRONG:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 136
    :pswitch_37
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_ENTER_PIN:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 132
    :pswitch_38
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INSERT_TAP_OR_SWIPE_TO_PAY:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 131
    :pswitch_39
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INSERT_OR_SWIPE_TO_PAY:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 130
    :pswitch_3a
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INSERT_TAP_OR_SWIPE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 129
    :pswitch_3b
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_INSERT_OR_SWIPE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 128
    :pswitch_3c
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_COMPLETING_YOUR_ORDER:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 127
    :pswitch_3d
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_PLEASE_WAIT:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 126
    :pswitch_3e
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_REMOVE_CARD:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 125
    :pswitch_3f
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_THANK_YOU:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 118
    :pswitch_40
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_PROCESSING:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 117
    :pswitch_41
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_CONNECTING:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 116
    :pswitch_42
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_WAIT_SEVERAL_MINUTES:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 115
    :pswitch_43
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_DOWNLOADING_UPDATE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 114
    :pswitch_44
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_NO_INTERNET_ADVICE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 113
    :pswitch_45
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_NO_INTERNET_CONNECTION:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 112
    :pswitch_46
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_ACCEPT_PAYMENTS:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 111
    :pswitch_47
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_READY_TO_GO:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 110
    :pswitch_48
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_USE_FOLLOWING_CODE:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 109
    :pswitch_49
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->MESSAGE_ACTIVATE_READER:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    .line 108
    :pswitch_4a
    sget-object p1, Lcom/stripe/proto/model/config/UxString;->INVALID_UXSTRING:Lcom/stripe/proto/model/config/UxString;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method
