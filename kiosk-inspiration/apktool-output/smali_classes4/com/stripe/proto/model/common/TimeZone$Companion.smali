.class public final Lcom/stripe/proto/model/common/TimeZone$Companion;
.super Ljava/lang/Object;
.source "TimeZone.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/TimeZone;
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
        "Lcom/stripe/proto/model/common/TimeZone$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/TimeZone;",
        "fromValue",
        "value",
        "",
        "common_release"
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

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/model/common/TimeZone$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/model/common/TimeZone;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1179
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KANTON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1083
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KYIV:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 729
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CIUDAD_JUAREZ:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1230
    :pswitch_4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ZULU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1229
    :pswitch_5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->WET:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1228
    :pswitch_6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->W_SU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1227
    :pswitch_7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->UNIVERSAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1225
    :pswitch_8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__SAMOA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1224
    :pswitch_9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__PACIFIC_NEW:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1223
    :pswitch_a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__PACIFIC:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1222
    :pswitch_b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__MOUNTAIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1221
    :pswitch_c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__MICHIGAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1220
    :pswitch_d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__INDIANA_STARKE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1219
    :pswitch_e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__HAWAII:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1218
    :pswitch_f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__EASTERN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1217
    :pswitch_10
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__EAST_INDIANA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1216
    :pswitch_11
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__CENTRAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1215
    :pswitch_12
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__ARIZONA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1214
    :pswitch_13
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__ALEUTIAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1213
    :pswitch_14
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->US__ALASKA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1212
    :pswitch_15
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->UCT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1211
    :pswitch_16
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->TURKEY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1210
    :pswitch_17
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->SINGAPORE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1209
    :pswitch_18
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ROK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1208
    :pswitch_19
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ROC:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1207
    :pswitch_1a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PORTUGAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1206
    :pswitch_1b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->POLAND:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1205
    :pswitch_1c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__YAP:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1204
    :pswitch_1d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__WALLIS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1203
    :pswitch_1e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__WAKE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1202
    :pswitch_1f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TRUK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1201
    :pswitch_20
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TONGATAPU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1200
    :pswitch_21
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TARAWA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1199
    :pswitch_22
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TAHITI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1198
    :pswitch_23
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__SAMOA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1197
    :pswitch_24
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__SAIPAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1196
    :pswitch_25
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__RAROTONGA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1195
    :pswitch_26
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PORT_MORESBY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1194
    :pswitch_27
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PONAPE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1193
    :pswitch_28
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__POHNPEI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1192
    :pswitch_29
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PITCAIRN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1191
    :pswitch_2a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PALAU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1190
    :pswitch_2b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PAGO_PAGO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1189
    :pswitch_2c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NOUMEA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1188
    :pswitch_2d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NORFOLK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1187
    :pswitch_2e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NIUE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1186
    :pswitch_2f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NAURU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1185
    :pswitch_30
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__MIDWAY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1184
    :pswitch_31
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__MARQUESAS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1183
    :pswitch_32
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__MAJURO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1182
    :pswitch_33
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KWAJALEIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1181
    :pswitch_34
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KOSRAE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1180
    :pswitch_35
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KIRITIMATI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1178
    :pswitch_36
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__JOHNSTON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1176
    :pswitch_37
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GUAM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1175
    :pswitch_38
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GUADALCANAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1174
    :pswitch_39
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GAMBIER:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1173
    :pswitch_3a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GALAPAGOS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1172
    :pswitch_3b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__FUNAFUTI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1171
    :pswitch_3c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__FIJI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1170
    :pswitch_3d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__FAKAOFO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1169
    :pswitch_3e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__ENDERBURY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1168
    :pswitch_3f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__EFATE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1167
    :pswitch_40
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__EASTER:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1166
    :pswitch_41
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__CHUUK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1165
    :pswitch_42
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__CHATHAM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1164
    :pswitch_43
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__BOUGAINVILLE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1162
    :pswitch_44
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__APIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1161
    :pswitch_45
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PST8PDT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1160
    :pswitch_46
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PRC:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1159
    :pswitch_47
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->NAVAJO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1158
    :pswitch_48
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->NZ_CHAT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1157
    :pswitch_49
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->NZ:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1156
    :pswitch_4a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->MEXICO__GENERAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1155
    :pswitch_4b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->MEXICO__BAJASUR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1154
    :pswitch_4c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->MEXICO__BAJANORTE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1153
    :pswitch_4d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->MST7MDT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1152
    :pswitch_4e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->MST:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1151
    :pswitch_4f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->MET:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1150
    :pswitch_50
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->LIBYA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1149
    :pswitch_51
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->KWAJALEIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1148
    :pswitch_52
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->JAPAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1147
    :pswitch_53
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->JAMAICA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1146
    :pswitch_54
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ISRAEL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1145
    :pswitch_55
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->IRAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1144
    :pswitch_56
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__REUNION:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1143
    :pswitch_57
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MAYOTTE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1142
    :pswitch_58
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MAURITIUS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1141
    :pswitch_59
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MALDIVES:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1140
    :pswitch_5a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MAHE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1139
    :pswitch_5b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__KERGUELEN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1138
    :pswitch_5c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__COMORO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1137
    :pswitch_5d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__COCOS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1136
    :pswitch_5e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__CHRISTMAS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1135
    :pswitch_5f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__CHAGOS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1134
    :pswitch_60
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__ANTANANARIVO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1133
    :pswitch_61
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ICELAND:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1132
    :pswitch_62
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->HONGKONG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1131
    :pswitch_63
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->HST:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1130
    :pswitch_64
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->GREENWICH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1129
    :pswitch_65
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->GMT0:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1128
    :pswitch_66
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->GMT_MINUS_0:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1127
    :pswitch_67
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->GMT_PLUS_0:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1126
    :pswitch_68
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->GMT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1125
    :pswitch_69
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->GB_EIRE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1124
    :pswitch_6a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->GB:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1122
    :pswitch_6b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ZAPOROZHYE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1121
    :pswitch_6c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ZAGREB:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1120
    :pswitch_6d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__WARSAW:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1119
    :pswitch_6e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VOLGOGRAD:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1118
    :pswitch_6f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VILNIUS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1116
    :pswitch_70
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VATICAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1115
    :pswitch_71
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VADUZ:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1114
    :pswitch_72
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__UZHGOROD:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1113
    :pswitch_73
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ULYANOVSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1112
    :pswitch_74
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__TIRASPOL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1111
    :pswitch_75
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__TIRANE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1110
    :pswitch_76
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__TALLINN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1108
    :pswitch_77
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SOFIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1107
    :pswitch_78
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SKOPJE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1106
    :pswitch_79
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SIMFEROPOL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1105
    :pswitch_7a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SARATOV:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1104
    :pswitch_7b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SARAJEVO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1103
    :pswitch_7c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SAN_MARINO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1102
    :pswitch_7d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SAMARA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1100
    :pswitch_7e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__RIGA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1099
    :pswitch_7f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__PRAGUE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1098
    :pswitch_80
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__PODGORICA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1096
    :pswitch_81
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__OSLO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1095
    :pswitch_82
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__NICOSIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1094
    :pswitch_83
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MOSCOW:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1093
    :pswitch_84
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MONACO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1092
    :pswitch_85
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MINSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1091
    :pswitch_86
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MARIEHAMN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1090
    :pswitch_87
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MALTA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1088
    :pswitch_88
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LUXEMBOURG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1086
    :pswitch_89
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LJUBLJANA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1085
    :pswitch_8a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LISBON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1084
    :pswitch_8b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KIROV:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1082
    :pswitch_8c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KIEV:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1081
    :pswitch_8d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KALININGRAD:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1080
    :pswitch_8e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__JERSEY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1079
    :pswitch_8f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ISTANBUL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1078
    :pswitch_90
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ISLE_OF_MAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1077
    :pswitch_91
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__HELSINKI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1076
    :pswitch_92
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__GUERNSEY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1075
    :pswitch_93
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__GIBRALTAR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1073
    :pswitch_94
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__COPENHAGEN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1072
    :pswitch_95
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__CHISINAU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1071
    :pswitch_96
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BUSINGEN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1070
    :pswitch_97
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BUDAPEST:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1069
    :pswitch_98
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BUCHAREST:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1067
    :pswitch_99
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BRATISLAVA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1065
    :pswitch_9a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BELGRADE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1064
    :pswitch_9b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BELFAST:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1063
    :pswitch_9c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ATHENS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1062
    :pswitch_9d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ASTRAKHAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1061
    :pswitch_9e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ANDORRA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1059
    :pswitch_9f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__ZULU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1058
    :pswitch_a0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__UNIVERSAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1057
    :pswitch_a1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__UTC:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1056
    :pswitch_a2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__UCT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1055
    :pswitch_a3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GREENWICH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1054
    :pswitch_a4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT0:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1053
    :pswitch_a5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_9:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1052
    :pswitch_a6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_8:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1051
    :pswitch_a7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_7:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1050
    :pswitch_a8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_6:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1049
    :pswitch_a9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_5:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1048
    :pswitch_aa
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_4:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1047
    :pswitch_ab
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_3:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1046
    :pswitch_ac
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_2:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1045
    :pswitch_ad
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_14:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1044
    :pswitch_ae
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_13:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1043
    :pswitch_af
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_12:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1042
    :pswitch_b0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_11:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1041
    :pswitch_b1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_10:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1040
    :pswitch_b2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_1:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1039
    :pswitch_b3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_0:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1038
    :pswitch_b4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_9:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1037
    :pswitch_b5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_8:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1036
    :pswitch_b6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_7:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1035
    :pswitch_b7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_6:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1034
    :pswitch_b8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_5:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1033
    :pswitch_b9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_4:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1032
    :pswitch_ba
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_3:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1031
    :pswitch_bb
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_2:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1030
    :pswitch_bc
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_12:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1029
    :pswitch_bd
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_11:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1028
    :pswitch_be
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_10:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1027
    :pswitch_bf
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_1:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1026
    :pswitch_c0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_0:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1025
    :pswitch_c1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1024
    :pswitch_c2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EIRE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1023
    :pswitch_c3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EGYPT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1022
    :pswitch_c4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EST5EDT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1021
    :pswitch_c5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EST:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1020
    :pswitch_c6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EET:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1019
    :pswitch_c7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CUBA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1018
    :pswitch_c8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CHILE__EASTERISLAND:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1017
    :pswitch_c9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CHILE__CONTINENTAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1016
    :pswitch_ca
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__YUKON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1015
    :pswitch_cb
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__SASKATCHEWAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1014
    :pswitch_cc
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__PACIFIC:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1013
    :pswitch_cd
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__NEWFOUNDLAND:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1012
    :pswitch_ce
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__MOUNTAIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1011
    :pswitch_cf
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__EASTERN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1010
    :pswitch_d0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__CENTRAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1009
    :pswitch_d1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__ATLANTIC:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1008
    :pswitch_d2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CST6CDT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1007
    :pswitch_d3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->CET:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1006
    :pswitch_d4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__WEST:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1005
    :pswitch_d5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__EAST:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1004
    :pswitch_d6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__DENORONHA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1003
    :pswitch_d7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__ACRE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1002
    :pswitch_d8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__YANCOWINNA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1001
    :pswitch_d9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__WEST:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1000
    :pswitch_da
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__VICTORIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 999
    :pswitch_db
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__TASMANIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 997
    :pswitch_dc
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__SOUTH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 996
    :pswitch_dd
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__QUEENSLAND:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 995
    :pswitch_de
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__PERTH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 994
    :pswitch_df
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__NORTH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 993
    :pswitch_e0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__NSW:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 991
    :pswitch_e1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__LORD_HOWE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 990
    :pswitch_e2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__LINDEMAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 989
    :pswitch_e3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__LHI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 988
    :pswitch_e4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__HOBART:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 987
    :pswitch_e5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__EUCLA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 986
    :pswitch_e6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__DARWIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 985
    :pswitch_e7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__CURRIE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 984
    :pswitch_e8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__CANBERRA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 983
    :pswitch_e9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__BROKEN_HILL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 980
    :pswitch_ea
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__ACT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 979
    :pswitch_eb
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__STANLEY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 978
    :pswitch_ec
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__ST_HELENA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 977
    :pswitch_ed
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__SOUTH_GEORGIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 976
    :pswitch_ee
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__REYKJAVIK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 975
    :pswitch_ef
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__MADEIRA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 974
    :pswitch_f0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__JAN_MAYEN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 973
    :pswitch_f1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__FAROE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 972
    :pswitch_f2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__FAEROE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 971
    :pswitch_f3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__CAPE_VERDE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 970
    :pswitch_f4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__CANARY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 969
    :pswitch_f5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__BERMUDA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 968
    :pswitch_f6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__AZORES:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 967
    :pswitch_f7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YEREVAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 966
    :pswitch_f8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YEKATERINBURG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 965
    :pswitch_f9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YANGON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 964
    :pswitch_fa
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YAKUTSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 963
    :pswitch_fb
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__VLADIVOSTOK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 962
    :pswitch_fc
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__VIENTIANE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 961
    :pswitch_fd
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__UST_NERA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 960
    :pswitch_fe
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__URUMQI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 959
    :pswitch_ff
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ULAN_BATOR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 958
    :pswitch_100
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ULAANBAATAR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 957
    :pswitch_101
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__UJUNG_PANDANG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 956
    :pswitch_102
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TOMSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 954
    :pswitch_103
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__THIMPHU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 953
    :pswitch_104
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__THIMBU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 952
    :pswitch_105
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TEL_AVIV:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 951
    :pswitch_106
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TEHRAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 950
    :pswitch_107
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TBILISI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 949
    :pswitch_108
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TASHKENT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 948
    :pswitch_109
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TAIPEI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 947
    :pswitch_10a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SREDNEKOLYMSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 943
    :pswitch_10b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SAMARKAND:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 942
    :pswitch_10c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SAKHALIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 941
    :pswitch_10d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SAIGON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 940
    :pswitch_10e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__RIYADH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 939
    :pswitch_10f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__RANGOON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 938
    :pswitch_110
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__QYZYLORDA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 937
    :pswitch_111
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__QOSTANAY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 936
    :pswitch_112
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__QATAR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 935
    :pswitch_113
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__PYONGYANG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 934
    :pswitch_114
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__PONTIANAK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 933
    :pswitch_115
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__PHNOM_PENH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 932
    :pswitch_116
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ORAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 931
    :pswitch_117
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__OMSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 930
    :pswitch_118
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__NOVOSIBIRSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 929
    :pswitch_119
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__NOVOKUZNETSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 928
    :pswitch_11a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__NICOSIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 927
    :pswitch_11b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MUSCAT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 925
    :pswitch_11c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MAKASSAR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 924
    :pswitch_11d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MAGADAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 923
    :pswitch_11e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MACAU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 922
    :pswitch_11f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MACAO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 921
    :pswitch_120
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KUWAIT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 920
    :pswitch_121
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KUCHING:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 919
    :pswitch_122
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KUALA_LUMPUR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 918
    :pswitch_123
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KRASNOYARSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 916
    :pswitch_124
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KHANDYGA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 915
    :pswitch_125
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KATMANDU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 914
    :pswitch_126
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KATHMANDU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 913
    :pswitch_127
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KASHGAR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 912
    :pswitch_128
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KARACHI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 911
    :pswitch_129
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KAMCHATKA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 910
    :pswitch_12a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KABUL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 908
    :pswitch_12b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__JAYAPURA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 907
    :pswitch_12c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__JAKARTA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 906
    :pswitch_12d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ISTANBUL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 905
    :pswitch_12e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__IRKUTSK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 904
    :pswitch_12f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HOVD:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 902
    :pswitch_130
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HO_CHI_MINH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 901
    :pswitch_131
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HEBRON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 900
    :pswitch_132
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HARBIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 899
    :pswitch_133
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__GAZA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 898
    :pswitch_134
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__FAMAGUSTA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 897
    :pswitch_135
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DUSHANBE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 896
    :pswitch_136
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DUBAI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 895
    :pswitch_137
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DILI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 894
    :pswitch_138
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DHAKA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 893
    :pswitch_139
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DAMASCUS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 892
    :pswitch_13a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DACCA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 891
    :pswitch_13b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__COLOMBO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 890
    :pswitch_13c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHUNGKING:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 889
    :pswitch_13d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHONGQING:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 888
    :pswitch_13e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHOIBALSAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 887
    :pswitch_13f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHITA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 886
    :pswitch_140
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CALCUTTA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 885
    :pswitch_141
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BRUNEI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 884
    :pswitch_142
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BISHKEK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 883
    :pswitch_143
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BEIRUT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 882
    :pswitch_144
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BARNAUL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 881
    :pswitch_145
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BANGKOK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 880
    :pswitch_146
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BAKU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 879
    :pswitch_147
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BAHRAIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 878
    :pswitch_148
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BAGHDAD:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 877
    :pswitch_149
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ATYRAU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 876
    :pswitch_14a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ASHKHABAD:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 875
    :pswitch_14b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ASHGABAT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 874
    :pswitch_14c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__AQTOBE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 873
    :pswitch_14d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__AQTAU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 872
    :pswitch_14e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ANADYR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 871
    :pswitch_14f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__AMMAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 870
    :pswitch_150
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ALMATY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 869
    :pswitch_151
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ADEN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 868
    :pswitch_152
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ARCTIC__LONGYEARBYEN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 867
    :pswitch_153
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__VOSTOK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 866
    :pswitch_154
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__TROLL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 865
    :pswitch_155
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__SYOWA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 864
    :pswitch_156
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__SOUTH_POLE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 863
    :pswitch_157
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__ROTHERA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 862
    :pswitch_158
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__PALMER:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 861
    :pswitch_159
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__MCMURDO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 860
    :pswitch_15a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__MAWSON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 859
    :pswitch_15b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__MACQUARIE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 858
    :pswitch_15c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__DUMONTDURVILLE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 857
    :pswitch_15d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__DAVIS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 856
    :pswitch_15e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__CASEY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 851
    :pswitch_15f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__VIRGIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 849
    :pswitch_160
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TORTOLA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 847
    :pswitch_161
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TIJUANA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 845
    :pswitch_162
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__THULE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 844
    :pswitch_163
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TEGUCIGALPA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 842
    :pswitch_164
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_VINCENT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 841
    :pswitch_165
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_THOMAS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 840
    :pswitch_166
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_LUCIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 839
    :pswitch_167
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_KITTS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 837
    :pswitch_168
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_BARTHELEMY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 836
    :pswitch_169
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SITKA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 835
    :pswitch_16a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SHIPROCK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 834
    :pswitch_16b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SCORESBYSUND:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 832
    :pswitch_16c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTO_DOMINGO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 831
    :pswitch_16d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTIAGO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 830
    :pswitch_16e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTAREM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 829
    :pswitch_16f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTA_ISABEL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 828
    :pswitch_170
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ROSARIO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 827
    :pswitch_171
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RIO_BRANCO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 824
    :pswitch_172
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RECIFE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 821
    :pswitch_173
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PUNTA_ARENAS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 820
    :pswitch_174
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PUERTO_RICO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 819
    :pswitch_175
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORTO_VELHO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 818
    :pswitch_176
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORTO_ACRE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 817
    :pswitch_177
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORT_OF_SPAIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 816
    :pswitch_178
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORT_AU_PRINCE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 814
    :pswitch_179
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PARAMARIBO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 813
    :pswitch_17a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PANGNIRTUNG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 812
    :pswitch_17b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PANAMA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 811
    :pswitch_17c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__OJINAGA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 810
    :pswitch_17d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NUUK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 806
    :pswitch_17e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORONHA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 804
    :pswitch_17f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NIPIGON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 802
    :pswitch_180
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NASSAU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 801
    :pswitch_181
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTSERRAT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 799
    :pswitch_182
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTEVIDEO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 798
    :pswitch_183
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTERREY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 796
    :pswitch_184
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MIQUELON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 794
    :pswitch_185
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__METLAKATLA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 793
    :pswitch_186
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MERIDA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 791
    :pswitch_187
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MENDOZA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 790
    :pswitch_188
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MAZATLAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 789
    :pswitch_189
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MATAMOROS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 788
    :pswitch_18a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MARTINIQUE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 787
    :pswitch_18b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MARIGOT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 786
    :pswitch_18c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MANAUS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 785
    :pswitch_18d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MANAGUA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 784
    :pswitch_18e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MACEIO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 783
    :pswitch_18f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LOWER_PRINCES:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 782
    :pswitch_190
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LOUISVILLE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 780
    :pswitch_191
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LIMA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 779
    :pswitch_192
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LA_PAZ:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 778
    :pswitch_193
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KRALENDIJK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 777
    :pswitch_194
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KNOX_IN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 773
    :pswitch_195
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__JUJUY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 772
    :pswitch_196
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__JAMAICA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 770
    :pswitch_197
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INUVIK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 769
    :pswitch_198
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANAPOLIS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 760
    :pswitch_199
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__HERMOSILLO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 759
    :pswitch_19a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__HAVANA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 757
    :pswitch_19b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUYANA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 756
    :pswitch_19c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUAYAQUIL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 755
    :pswitch_19d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUATEMALA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 754
    :pswitch_19e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUADELOUPE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 753
    :pswitch_19f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GRENADA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 752
    :pswitch_1a0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GRAND_TURK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 750
    :pswitch_1a1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GODTHAB:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 748
    :pswitch_1a2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__FORTALEZA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 747
    :pswitch_1a3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__FORT_WAYNE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 746
    :pswitch_1a4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__FORT_NELSON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 745
    :pswitch_1a5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ENSENADA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 744
    :pswitch_1a6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__EL_SALVADOR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 743
    :pswitch_1a7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__EIRUNEPE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 741
    :pswitch_1a8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DOMINICA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 736
    :pswitch_1a9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DANMARKSHAVN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 735
    :pswitch_1aa
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CURACAO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 734
    :pswitch_1ab
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CUIABA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 733
    :pswitch_1ac
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CRESTON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 732
    :pswitch_1ad
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__COSTA_RICA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 731
    :pswitch_1ae
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CORDOBA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 728
    :pswitch_1af
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CHIHUAHUA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 726
    :pswitch_1b0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAYMAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 725
    :pswitch_1b1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAYENNE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 724
    :pswitch_1b2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CATAMARCA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 723
    :pswitch_1b3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CARACAS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 722
    :pswitch_1b4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CANCUN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 721
    :pswitch_1b5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAMPO_GRANDE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 719
    :pswitch_1b6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BUENOS_AIRES:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 717
    :pswitch_1b7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BOGOTA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 716
    :pswitch_1b8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BOA_VISTA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 714
    :pswitch_1b9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BELIZE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 713
    :pswitch_1ba
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BELEM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 712
    :pswitch_1bb
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BARBADOS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 711
    :pswitch_1bc
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BAHIA_BANDERAS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 710
    :pswitch_1bd
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BAHIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 709
    :pswitch_1be
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ATKA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 707
    :pswitch_1bf
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ASUNCION:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 706
    :pswitch_1c0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARUBA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 705
    :pswitch_1c1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__USHUAIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 704
    :pswitch_1c2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__TUCUMAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 703
    :pswitch_1c3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__SAN_LUIS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 702
    :pswitch_1c4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__SAN_JUAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 701
    :pswitch_1c5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__SALTA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 700
    :pswitch_1c6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__RIO_GALLEGOS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 699
    :pswitch_1c7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__MENDOZA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 698
    :pswitch_1c8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__LA_RIOJA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 697
    :pswitch_1c9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__JUJUY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 696
    :pswitch_1ca
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__CORDOBA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 695
    :pswitch_1cb
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__COMODRIVADAVIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 694
    :pswitch_1cc
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__CATAMARCA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 693
    :pswitch_1cd
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__BUENOS_AIRES:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 692
    :pswitch_1ce
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARAGUAINA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 691
    :pswitch_1cf
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ANTIGUA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 690
    :pswitch_1d0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ANGUILLA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 687
    :pswitch_1d1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__WINDHOEK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 686
    :pswitch_1d2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__TUNIS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 685
    :pswitch_1d3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__TRIPOLI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 684
    :pswitch_1d4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__TIMBUKTU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 683
    :pswitch_1d5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__SAO_TOME:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 682
    :pswitch_1d6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__PORTO_NOVO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 681
    :pswitch_1d7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__OUAGADOUGOU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 680
    :pswitch_1d8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NOUAKCHOTT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 679
    :pswitch_1d9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NIAMEY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 678
    :pswitch_1da
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NDJAMENA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 677
    :pswitch_1db
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NAIROBI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 676
    :pswitch_1dc
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MONROVIA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 675
    :pswitch_1dd
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MOGADISHU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 674
    :pswitch_1de
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MBABANE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 673
    :pswitch_1df
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MASERU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 672
    :pswitch_1e0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MAPUTO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 671
    :pswitch_1e1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MALABO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 670
    :pswitch_1e2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LUSAKA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 669
    :pswitch_1e3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LUBUMBASHI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 668
    :pswitch_1e4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LUANDA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 667
    :pswitch_1e5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LOME:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 666
    :pswitch_1e6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LIBREVILLE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 665
    :pswitch_1e7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LAGOS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 664
    :pswitch_1e8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KINSHASA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 663
    :pswitch_1e9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KIGALI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 662
    :pswitch_1ea
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KHARTOUM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 661
    :pswitch_1eb
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KAMPALA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 660
    :pswitch_1ec
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__JUBA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 659
    :pswitch_1ed
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__JOHANNESBURG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 658
    :pswitch_1ee
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__HARARE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 657
    :pswitch_1ef
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__GABORONE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 656
    :pswitch_1f0
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__FREETOWN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 655
    :pswitch_1f1
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__EL_AAIUN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 654
    :pswitch_1f2
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DOUALA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 653
    :pswitch_1f3
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DJIBOUTI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 652
    :pswitch_1f4
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DAR_ES_SALAAM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 651
    :pswitch_1f5
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DAKAR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 650
    :pswitch_1f6
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CONAKRY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 649
    :pswitch_1f7
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CEUTA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 648
    :pswitch_1f8
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CASABLANCA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 647
    :pswitch_1f9
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CAIRO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 646
    :pswitch_1fa
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BUJUMBURA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 645
    :pswitch_1fb
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BRAZZAVILLE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 644
    :pswitch_1fc
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BLANTYRE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 643
    :pswitch_1fd
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BISSAU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 642
    :pswitch_1fe
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BANJUL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 641
    :pswitch_1ff
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BANGUI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 640
    :pswitch_200
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BAMAKO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 639
    :pswitch_201
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ASMERA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 638
    :pswitch_202
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ASMARA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 637
    :pswitch_203
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ALGIERS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 636
    :pswitch_204
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ADDIS_ABABA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 635
    :pswitch_205
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ACCRA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 634
    :pswitch_206
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ABIDJAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 926
    :pswitch_207
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MANILA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1163
    :pswitch_208
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__AUCKLAND:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 917
    :pswitch_209
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KOLKATA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 903
    :pswitch_20a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HONG_KONG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 982
    :pswitch_20b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__BRISBANE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 855
    :pswitch_20c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__YELLOWKNIFE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 852
    :pswitch_20d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__WHITEHORSE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 846
    :pswitch_20e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__THUNDER_BAY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 843
    :pswitch_20f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SWIFT_CURRENT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 838
    :pswitch_210
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_JOHNS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 826
    :pswitch_211
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RESOLUTE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 823
    :pswitch_212
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RANKIN_INLET:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 822
    :pswitch_213
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RAINY_RIVER:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 800
    :pswitch_214
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTREAL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 797
    :pswitch_215
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONCTON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 771
    :pswitch_216
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__IQALUIT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 751
    :pswitch_217
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GOOSE_BAY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 749
    :pswitch_218
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GLACE_BAY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 738
    :pswitch_219
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DAWSON_CREEK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 737
    :pswitch_21a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DAWSON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 730
    :pswitch_21b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CORAL_HARBOUR:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 720
    :pswitch_21c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAMBRIDGE_BAY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 715
    :pswitch_21d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BLANC_SABLON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 708
    :pswitch_21e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ATIKOKAN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 854
    :pswitch_21f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__YAKUTAT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 805
    :pswitch_220
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NOME:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 809
    :pswitch_221
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORTH_DAKOTA__NEW_SALEM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 808
    :pswitch_222
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORTH_DAKOTA__CENTER:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 807
    :pswitch_223
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORTH_DAKOTA__BEULAH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 792
    :pswitch_224
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MENOMINEE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 776
    :pswitch_225
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KENTUCKY__MONTICELLO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 775
    :pswitch_226
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KENTUCKY__LOUISVILLE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 768
    :pswitch_227
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__WINAMAC:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 767
    :pswitch_228
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__VINCENNES:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 766
    :pswitch_229
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__VEVAY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 765
    :pswitch_22a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__TELL_CITY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 764
    :pswitch_22b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__PETERSBURG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 763
    :pswitch_22c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__MARENGO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 762
    :pswitch_22d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__KNOX:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 761
    :pswitch_22e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__INDIANAPOLIS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 774
    :pswitch_22f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__JUNEAU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 718
    :pswitch_230
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BOISE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 688
    :pswitch_231
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ADAK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 946
    :pswitch_232
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SINGAPORE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1177
    :pswitch_233
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__HONOLULU:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1123
    :pswitch_234
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ZURICH:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1117
    :pswitch_235
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VIENNA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1109
    :pswitch_236
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__STOCKHOLM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1101
    :pswitch_237
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ROME:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1097
    :pswitch_238
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__PARIS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1089
    :pswitch_239
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MADRID:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1087
    :pswitch_23a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LONDON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1074
    :pswitch_23b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__DUBLIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1068
    :pswitch_23c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BRUSSELS:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1066
    :pswitch_23d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BERLIN:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1060
    :pswitch_23e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__AMSTERDAM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 998
    :pswitch_23f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__SYDNEY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 992
    :pswitch_240
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__MELBOURNE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 981
    :pswitch_241
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__ADELAIDE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 955
    :pswitch_242
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TOKYO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 945
    :pswitch_243
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SHANGHAI:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 944
    :pswitch_244
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SEOUL:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 909
    :pswitch_245
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__JERUSALEM:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 853
    :pswitch_246
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__WINNIPEG:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 850
    :pswitch_247
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__VANCOUVER:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 848
    :pswitch_248
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TORONTO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 833
    :pswitch_249
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SAO_PAULO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 825
    :pswitch_24a
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__REGINA:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 795
    :pswitch_24b
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MEXICO_CITY:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 758
    :pswitch_24c
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__HALIFAX:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 742
    :pswitch_24d
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__EDMONTON:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 740
    :pswitch_24e
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DETROIT:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 815
    :pswitch_24f
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PHOENIX:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 689
    :pswitch_250
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ANCHORAGE:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 727
    :pswitch_251
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CHICAGO:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 739
    :pswitch_252
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DENVER:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 803
    :pswitch_253
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NEW_YORK:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 781
    :pswitch_254
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LOS_ANGELES:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 1226
    :pswitch_255
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->UTC:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    .line 633
    :pswitch_256
    sget-object p1, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_256
        :pswitch_255
        :pswitch_254
        :pswitch_253
        :pswitch_252
        :pswitch_251
        :pswitch_250
        :pswitch_24f
        :pswitch_24e
        :pswitch_24d
        :pswitch_24c
        :pswitch_24b
        :pswitch_24a
        :pswitch_249
        :pswitch_248
        :pswitch_247
        :pswitch_246
        :pswitch_245
        :pswitch_244
        :pswitch_243
        :pswitch_242
        :pswitch_241
        :pswitch_240
        :pswitch_23f
        :pswitch_23e
        :pswitch_23d
        :pswitch_23c
        :pswitch_23b
        :pswitch_23a
        :pswitch_239
        :pswitch_238
        :pswitch_237
        :pswitch_236
        :pswitch_235
        :pswitch_234
        :pswitch_233
        :pswitch_232
        :pswitch_231
        :pswitch_230
        :pswitch_22f
        :pswitch_22e
        :pswitch_22d
        :pswitch_22c
        :pswitch_22b
        :pswitch_22a
        :pswitch_229
        :pswitch_228
        :pswitch_227
        :pswitch_226
        :pswitch_225
        :pswitch_224
        :pswitch_223
        :pswitch_222
        :pswitch_221
        :pswitch_220
        :pswitch_21f
        :pswitch_21e
        :pswitch_21d
        :pswitch_21c
        :pswitch_21b
        :pswitch_21a
        :pswitch_0
        :pswitch_219
        :pswitch_218
        :pswitch_217
        :pswitch_216
        :pswitch_215
        :pswitch_214
        :pswitch_213
        :pswitch_212
        :pswitch_211
        :pswitch_210
        :pswitch_20f
        :pswitch_20e
        :pswitch_20d
        :pswitch_20c
        :pswitch_20b
        :pswitch_20a
        :pswitch_209
        :pswitch_208
        :pswitch_207
        :pswitch_206
        :pswitch_205
        :pswitch_204
        :pswitch_203
        :pswitch_202
        :pswitch_201
        :pswitch_200
        :pswitch_1ff
        :pswitch_1fe
        :pswitch_1fd
        :pswitch_1fc
        :pswitch_1fb
        :pswitch_1fa
        :pswitch_1f9
        :pswitch_1f8
        :pswitch_1f7
        :pswitch_1f6
        :pswitch_1f5
        :pswitch_1f4
        :pswitch_1f3
        :pswitch_1f2
        :pswitch_1f1
        :pswitch_1f0
        :pswitch_1ef
        :pswitch_1ee
        :pswitch_1ed
        :pswitch_1ec
        :pswitch_1eb
        :pswitch_1ea
        :pswitch_1e9
        :pswitch_1e8
        :pswitch_1e7
        :pswitch_1e6
        :pswitch_1e5
        :pswitch_1e4
        :pswitch_1e3
        :pswitch_1e2
        :pswitch_1e1
        :pswitch_1e0
        :pswitch_1df
        :pswitch_1de
        :pswitch_1dd
        :pswitch_1dc
        :pswitch_1db
        :pswitch_1da
        :pswitch_1d9
        :pswitch_1d8
        :pswitch_1d7
        :pswitch_1d6
        :pswitch_1d5
        :pswitch_1d4
        :pswitch_1d3
        :pswitch_1d2
        :pswitch_1d1
        :pswitch_1d0
        :pswitch_1cf
        :pswitch_1ce
        :pswitch_1cd
        :pswitch_1cc
        :pswitch_1cb
        :pswitch_1ca
        :pswitch_1c9
        :pswitch_1c8
        :pswitch_1c7
        :pswitch_1c6
        :pswitch_1c5
        :pswitch_1c4
        :pswitch_1c3
        :pswitch_1c2
        :pswitch_1c1
        :pswitch_1c0
        :pswitch_1bf
        :pswitch_1be
        :pswitch_1bd
        :pswitch_1bc
        :pswitch_1bb
        :pswitch_1ba
        :pswitch_1b9
        :pswitch_1b8
        :pswitch_1b7
        :pswitch_1b6
        :pswitch_1b5
        :pswitch_1b4
        :pswitch_1b3
        :pswitch_1b2
        :pswitch_1b1
        :pswitch_1b0
        :pswitch_1af
        :pswitch_1ae
        :pswitch_1ad
        :pswitch_1ac
        :pswitch_1ab
        :pswitch_1aa
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
        :pswitch_191
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_182
        :pswitch_181
        :pswitch_180
        :pswitch_17f
        :pswitch_17e
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_174
        :pswitch_173
        :pswitch_172
        :pswitch_171
        :pswitch_170
        :pswitch_16f
        :pswitch_16e
        :pswitch_16d
        :pswitch_16c
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
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
