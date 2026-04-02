.class public final enum Lcom/stripe/cots/contactless/util/TlvSequence;
.super Ljava/lang/Enum;
.source "TlvSequence.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/cots/contactless/util/TlvSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B+\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/cots/contactless/util/TlvSequence;",
        "",
        "hexResponseSequences",
        "",
        "",
        "cardPresent",
        "",
        "simulatedDate",
        "Lkotlinx/datetime/LocalDateTime;",
        "(Ljava/lang/String;ILjava/util/List;ZLkotlinx/datetime/LocalDateTime;)V",
        "getCardPresent",
        "()Z",
        "getHexResponseSequences",
        "()Ljava/util/List;",
        "getSimulatedDate",
        "()Lkotlinx/datetime/LocalDateTime;",
        "VISA",
        "MASTERCARD",
        "AMEX_DECLINE",
        "NO_CARD",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/cots/contactless/util/TlvSequence;

.field public static final enum AMEX_DECLINE:Lcom/stripe/cots/contactless/util/TlvSequence;

.field public static final enum MASTERCARD:Lcom/stripe/cots/contactless/util/TlvSequence;

.field public static final enum NO_CARD:Lcom/stripe/cots/contactless/util/TlvSequence;

.field public static final enum VISA:Lcom/stripe/cots/contactless/util/TlvSequence;


# instance fields
.field private final cardPresent:Z

.field private final hexResponseSequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatedDate:Lkotlinx/datetime/LocalDateTime;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/cots/contactless/util/TlvSequence;
    .locals 4

    sget-object v0, Lcom/stripe/cots/contactless/util/TlvSequence;->VISA:Lcom/stripe/cots/contactless/util/TlvSequence;

    sget-object v1, Lcom/stripe/cots/contactless/util/TlvSequence;->MASTERCARD:Lcom/stripe/cots/contactless/util/TlvSequence;

    sget-object v2, Lcom/stripe/cots/contactless/util/TlvSequence;->AMEX_DECLINE:Lcom/stripe/cots/contactless/util/TlvSequence;

    sget-object v3, Lcom/stripe/cots/contactless/util/TlvSequence;->NO_CARD:Lcom/stripe/cots/contactless/util/TlvSequence;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/cots/contactless/util/TlvSequence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 31

    .line 18
    new-instance v0, Lcom/stripe/cots/contactless/util/TlvSequence;

    const/4 v8, 0x3

    .line 20
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "6F2D840E325041592E5359532E4444463031A51BBF0C1861164F07A0000000031010500B56495341204352454449549000"

    const/4 v9, 0x0

    aput-object v2, v1, v9

    .line 22
    const-string v2, "6F3E8407A0000000031010A533500B56495341204352454449549F38189F66029F02069F03069F1A0295055F2A029A039C019F3704BF0C089F5A0500084008409000"

    const/4 v10, 0x1

    aput-object v2, v1, v10

    .line 25
    const-string v2, "773D57104761739001010119D241220117589472820200005F3401019F100706010A03A000009F2608B41BEA702C91720A9F2701809F360200029F6C0200009000"

    const/4 v11, 0x2

    aput-object v2, v1, v11

    .line 19
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 18
    const-string v1, "VISA"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/cots/contactless/util/TlvSequence;-><init>(Ljava/lang/String;ILjava/util/List;ZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/contactless/util/TlvSequence;->VISA:Lcom/stripe/cots/contactless/util/TlvSequence;

    .line 35
    new-instance v12, Lcom/stripe/cots/contactless/util/TlvSequence;

    const/16 v0, 0xa

    .line 37
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "6F23840E325041592E5359532E4444463031A511BF0C0E610C4F07A00000000410108701019000"

    aput-object v2, v1, v9

    .line 39
    const-string v2, "6F3B8407A0000000041010A530500F505043204D43442030312076322032BF0C1C5F5019494343534F4C205C2A2F204D43443031205C2A2F2076322E329000"

    aput-object v2, v1, v10

    .line 42
    const-string v2, "7716820259809410080101001001010118010200200102009000"

    aput-object v2, v1, v11

    .line 44
    const-string v2, "707C9F6C0200019F62060000003800009F630600000000E0E0563B42353431333333303038393630303031305E5449502F504159504153535E32353132323031303030303030303030303030303030303030303030309F6401039F6502000E9F66020E709F6B135413330089600010D25122019000990000000F9F6701039000"

    aput-object v2, v1, v8

    .line 49
    const-string v2, "7081AD57115413330089600010D251220101234091725A0854133300896000105F200C455445432F504159504153535F24032512315F25030401015F280200565F3401018C219F02069F03069F1A0295055F2A029A039C019F37049F35019F45029F4C089F34038D0C910A8A0295059F37049F4C088E0E000000000000000042035E031F039F0702FF009F080200029F0D0500000000009F0E0500000000009F0F0500000000009F420209789F4A01829000"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 55
    const-string v2, "7081A08F01FA9F3201039204D35241079081901889B997E6FCE84B4AE7AB87431CBDB3DF8C1D5A55A7F60D2959AF3A5104E7588317ED74086668CF1A054784F7493C6D747FA796EC14D333A68EC7E00862959A0BD0F0482080B71AC1B7625B1B8B1F35A6691999BA78F592E23F95E99609D108CF1C0E308A8BF64FBDE837D3CE138A50DC50AF4B41EE53D98A11B6A81DDD44CC430C1EF3BB9D1D75A02FAA9C814AFC589000"

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 61
    const-string v2, "707293702C126F220EF4BF638970F8ABEEDD8B84868F66B17E12BF0FFD71C0BE57EA0B8061B3B1D53679FB6A1BDDF459781C4EBBF8928D274E23C197FC32EF4C9625A61FFC0FF258FFDF8651C77CA53EF0E83F04249E2C4395A507E1EC0CBC45AE23733FE3265205D30F61EA16A4F41A925F0E729000"

    const/4 v5, 0x6

    aput-object v2, v1, v5

    .line 66
    const-string v2, "70219F4701039F481A00000000000000066000000000000000000000000000000000559000"

    const/4 v6, 0x7

    aput-object v2, v1, v6

    .line 68
    const-string v2, "70739F467058A1035BA1333D9F85F0392C4DA1C377B70BC6F39B64D767FA31313BB47FB890650B1E372A1B1B024C8AD19FE38D412CCA433E48C3A1A18AA9F1B73497DCE9876944029664202485F39DA5532BFA60F5C53706A9BE016F0576BB1C2F704903D1EADD1A2132DB5C4B07D8323B6EE1B68F9000"

    const/16 v7, 0x8

    aput-object v2, v1, v7

    .line 73
    const-string v2, "77818F9F2701809F360200019F4B6057A3F96EB8FE189267586C69152170257E90F9F09E85D717E99F43E29A8FD60674D9C8863C0195619089496F9FA7F76D2CD0F86A52DFD28DC17E009964CC7074CE0C473227482194733CBD75E9342675946918E6191BB6A0AD35172CEF9763429F10200110A00000000000000000000000000000FF00000000000000000000000000009000"

    const/16 v20, 0x9

    aput-object v2, v1, v20

    .line 36
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 78
    new-instance v17, Lkotlinx/datetime/LocalDateTime;

    const/16 v29, 0x40

    const/16 v30, 0x0

    const/16 v22, 0x7e7

    const/16 v23, 0xc

    const/16 v24, 0x7

    const/16 v25, 0xb

    const/16 v26, 0x37

    const/16 v27, 0xc

    const/16 v28, 0x0

    move-object/from16 v21, v17

    invoke-direct/range {v21 .. v30}, Lkotlinx/datetime/LocalDateTime;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v18, 0x2

    const/16 v19, 0x0

    .line 35
    const-string v13, "MASTERCARD"

    const/4 v14, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/stripe/cots/contactless/util/TlvSequence;-><init>(Ljava/lang/String;ILjava/util/List;ZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v12, Lcom/stripe/cots/contactless/util/TlvSequence;->MASTERCARD:Lcom/stripe/cots/contactless/util/TlvSequence;

    .line 83
    new-instance v21, Lcom/stripe/cots/contactless/util/TlvSequence;

    const/16 v1, 0xc

    .line 85
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "6F36840E325041592E5359532E4444463031A524BF0C21611F4F08A0000000250104035010414D45524943414E20455850524553538701019000"

    aput-object v2, v1, v9

    .line 88
    aput-object v2, v1, v10

    .line 91
    const-string v2, "6F2C8408A000000025010403A5205010414D45524943414E20455850524553539F38039F35018701015F2D02656E9000"

    aput-object v2, v1, v11

    .line 93
    const-string v2, "801A0D800801010008050500080606011002020010050500200304009000"

    aput-object v2, v1, v8

    .line 95
    const-string v2, "702A5713374245001771004D241270215041234500000F5F2012585020434152442031312F56455220322E309000"

    aput-object v2, v1, v3

    .line 97
    const-string v2, "7081FB9081F88D12B5AE472CACB9484C7DF6420331614E8762DBD1A20423F401584D9230AECB1230C05BFFB0C5ABF8F3DD4629E250032212256D410279A2DFD94DECF8AA79428A4D79F8F3D417B2F4AA2B4FCBB4B7D8804CDF46529F7E9B16BB588B239E40D4C4644829AAA0874A0EDBE2966E561B20CCFBB45BC0505B13846DAE13D81CC9A904BB28148A454BDE3DACF2DAAEB65A39F1276F65E49B46FAAB6398BE806A0A48A30B384AE5FED5526064020D8A787DFFA25F13BA4953B373A9AFE47086AE1DE821EA746042E68CD36D9E991DB143FACD06414D29C3BE6FF7AD2D0D6F6B99A4EF13FEE8986CB8CD5F30EAA22CB800A408EFCA49C4B9B5D4159000"

    aput-object v2, v1, v4

    .line 105
    const-string v2, "7081845F24032412315F25031504015A08374245001771004F5F3401009F07023D008E0800000000000000008C159F02069F03069F1A0295055F2A029A039C019F37048D178A029F02069F03069F1A0295055F2A029A039C019F37049F0D05F470C498009F0E0500000000009F0F05F470C498005F280208269F420208269F080200019F4A01829000"

    aput-object v2, v1, v5

    .line 110
    const-string v2, "700C9F3201038F01CA9F700210009000"

    aput-object v2, v1, v6

    .line 112
    const-string v2, "70055F300207029000"

    aput-object v2, v1, v7

    .line 114
    const-string v2, "70099F4701039F660209789000"

    aput-object v2, v1, v20

    .line 116
    const-string v2, "7081B49F4681B038A2B7DFF20A31A2A94AAEB7C2C0609A02C5BBD862F59141E01A021089CE311535BFF803DB744FA5F8130CB7EF5424F771484323E4A9F06AC3604F5FA4ADC98815F956B10E9E8E565F176B2A6C281F075F463975B0E7523D042196528FAA49939AA378AB5A222BFBA27B2C636C6D698BCAB659DA38A2434CAE75BDFEC981BD64BA66A56495AD94E6FEF0C0A429D415F87B57B75CDA0A27423CCD05AA4AD0964574FBBA23FB333B90E2D40B9F8DD9473D9000"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    .line 122
    const-string v2, "7781979F2701809F360200019F4B818098C4E00C84B5130B7C4D2319A47AB5B3F2F179997F552E70A4C545DD0F235A6B7F2EEF095CF4EA5F6195EFDB16C2865DB1BF1A5D9D6B886DFF50A59FF654CC511854AA2531FFC2FD3D651383A9894656E462E36A60BF3F754A688E949B546336600306C51C2B3575399DD435B8EAE83FF68620751563DDE3089A68C1B2C367A39F100706020103A000009000"

    aput-object v2, v1, v0

    .line 84
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const/16 v27, 0x6

    const/16 v28, 0x0

    .line 83
    const-string v22, "AMEX_DECLINE"

    const/16 v23, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v21 .. v28}, Lcom/stripe/cots/contactless/util/TlvSequence;-><init>(Ljava/lang/String;ILjava/util/List;ZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v21, Lcom/stripe/cots/contactless/util/TlvSequence;->AMEX_DECLINE:Lcom/stripe/cots/contactless/util/TlvSequence;

    .line 130
    new-instance v0, Lcom/stripe/cots/contactless/util/TlvSequence;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v1, "NO_CARD"

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/cots/contactless/util/TlvSequence;-><init>(Ljava/lang/String;ILjava/util/List;ZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/contactless/util/TlvSequence;->NO_CARD:Lcom/stripe/cots/contactless/util/TlvSequence;

    invoke-static {}, Lcom/stripe/cots/contactless/util/TlvSequence;->$values()[Lcom/stripe/cots/contactless/util/TlvSequence;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/contactless/util/TlvSequence;->$VALUES:[Lcom/stripe/cots/contactless/util/TlvSequence;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/cots/contactless/util/TlvSequence;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/List;ZLkotlinx/datetime/LocalDateTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlinx/datetime/LocalDateTime;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/stripe/cots/contactless/util/TlvSequence;->hexResponseSequences:Ljava/util/List;

    .line 15
    iput-boolean p4, p0, Lcom/stripe/cots/contactless/util/TlvSequence;->cardPresent:Z

    .line 16
    iput-object p5, p0, Lcom/stripe/cots/contactless/util/TlvSequence;->simulatedDate:Lkotlinx/datetime/LocalDateTime;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;ZLkotlinx/datetime/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x4

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/stripe/cots/contactless/util/TlvSequence;-><init>(Ljava/lang/String;ILjava/util/List;ZLkotlinx/datetime/LocalDateTime;)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/cots/contactless/util/TlvSequence;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/cots/contactless/util/TlvSequence;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/cots/contactless/util/TlvSequence;
    .locals 1

    const-class v0, Lcom/stripe/cots/contactless/util/TlvSequence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/cots/contactless/util/TlvSequence;

    return-object p0
.end method

.method public static values()[Lcom/stripe/cots/contactless/util/TlvSequence;
    .locals 1

    sget-object v0, Lcom/stripe/cots/contactless/util/TlvSequence;->$VALUES:[Lcom/stripe/cots/contactless/util/TlvSequence;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/cots/contactless/util/TlvSequence;

    return-object v0
.end method


# virtual methods
.method public final getCardPresent()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/stripe/cots/contactless/util/TlvSequence;->cardPresent:Z

    return v0
.end method

.method public final getHexResponseSequences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/stripe/cots/contactless/util/TlvSequence;->hexResponseSequences:Ljava/util/List;

    return-object v0
.end method

.method public final getSimulatedDate()Lkotlinx/datetime/LocalDateTime;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/cots/contactless/util/TlvSequence;->simulatedDate:Lkotlinx/datetime/LocalDateTime;

    return-object v0
.end method
