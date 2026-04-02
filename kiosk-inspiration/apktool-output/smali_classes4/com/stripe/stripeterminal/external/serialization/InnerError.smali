.class public final Lcom/stripe/stripeterminal/external/serialization/InnerError;
.super Ljava/lang/Object;
.source "InnerError.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/serialization/InnerError$$serializer;,
        Lcom/stripe/stripeterminal/external/serialization/InnerError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 E2\u00060\u0001j\u0002`\u0002:\u0002DEBs\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0014B_\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010#\u001a\u0004\u0018\u00010\u0006H\u00c0\u0003\u00a2\u0006\u0002\u0008$J\u0010\u0010%\u001a\u0004\u0018\u00010\u0006H\u00c0\u0003\u00a2\u0006\u0002\u0008&J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0006H\u00c0\u0003\u00a2\u0006\u0002\u0008(J\u0010\u0010)\u001a\u0004\u0018\u00010\u0006H\u00c0\u0003\u00a2\u0006\u0002\u0008*J\u0010\u0010+\u001a\u0004\u0018\u00010\u0006H\u00c0\u0003\u00a2\u0006\u0002\u0008,J\u0010\u0010-\u001a\u0004\u0018\u00010\u0006H\u00c0\u0003\u00a2\u0006\u0002\u0008.J\u0010\u0010/\u001a\u0004\u0018\u00010\rH\u00c0\u0003\u00a2\u0006\u0002\u00080J\u0010\u00101\u001a\u0004\u0018\u00010\u000fH\u00c0\u0003\u00a2\u0006\u0002\u00082J\u0010\u00103\u001a\u0004\u0018\u00010\u0011H\u00c0\u0003\u00a2\u0006\u0002\u00084Ju\u00105\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00c6\u0001J\u0013\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u000109H\u00d6\u0003J\t\u0010:\u001a\u00020\u0004H\u00d6\u0001J\t\u0010;\u001a\u00020\u0006H\u00d6\u0001J&\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u00002\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020BH\u00c1\u0001\u00a2\u0006\u0002\u0008CR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0016\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017R\u0016\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006F"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/serialization/InnerError;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "charge",
        "",
        "code",
        "declineCode",
        "docUrl",
        "message",
        "param",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "type",
        "Lcom/stripe/stripeterminal/external/api/ApiErrorType;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;)V",
        "getCharge$public_release",
        "()Ljava/lang/String;",
        "getCode$public_release",
        "getDeclineCode$public_release",
        "getDocUrl$public_release",
        "getMessage$public_release",
        "getParam$public_release",
        "getPaymentIntent$public_release",
        "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "getSetupIntent$public_release",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "getType$public_release",
        "()Lcom/stripe/stripeterminal/external/api/ApiErrorType;",
        "component1",
        "component1$public_release",
        "component2",
        "component2$public_release",
        "component3",
        "component3$public_release",
        "component4",
        "component4$public_release",
        "component5",
        "component5$public_release",
        "component6",
        "component6$public_release",
        "component7",
        "component7$public_release",
        "component8",
        "component8$public_release",
        "component9",
        "component9$public_release",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$public_release",
        "$serializer",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/serialization/InnerError$Companion;


# instance fields
.field private final charge:Ljava/lang/String;

.field private final code:Ljava/lang/String;

.field private final declineCode:Ljava/lang/String;

.field private final docUrl:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final param:Ljava/lang/String;

.field private final paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

.field private final setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

.field private final type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/external/serialization/InnerError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/serialization/InnerError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->Companion:Lcom/stripe/stripeterminal/external/serialization/InnerError$Companion;

    const/16 v0, 0x9

    .line 9
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->Companion:Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit16 p11, p1, 0x1ff

    const/16 v0, 0x1ff

    if-eq v0, p11, :cond_0

    .line 9
    sget-object p11, Lcom/stripe/stripeterminal/external/serialization/InnerError$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/serialization/InnerError$$serializer;

    invoke-virtual {p11}, Lcom/stripe/stripeterminal/external/serialization/InnerError$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    iput-object p7, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    iput-object p8, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    iput-object p9, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    iput-object p10, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    .line 25
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    .line 27
    iput-object p9, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 9
    sget-object v0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/serialization/InnerError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/serialization/InnerError;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;)Lcom/stripe/stripeterminal/external/serialization/InnerError;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/serialization/InnerError;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 9
    sget-object v0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    const/4 v3, 0x6

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    const/4 v3, 0x7

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x8

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1$public_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    return-object v0
.end method

.method public final component2$public_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final component3$public_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component4$public_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5$public_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component6$public_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    return-object v0
.end method

.method public final component7$public_release()Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object v0
.end method

.method public final component8$public_release()Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object v0
.end method

.method public final component9$public_release()Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;)Lcom/stripe/stripeterminal/external/serialization/InnerError;
    .locals 10

    new-instance v0, Lcom/stripe/stripeterminal/external/serialization/InnerError;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/stripe/stripeterminal/external/serialization/InnerError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/api/ApiErrorType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCharge$public_release()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode$public_release()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeclineCode$public_release()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDocUrl$public_release()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage$public_release()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getParam$public_release()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentIntent$public_release()Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object v0
.end method

.method public final getSetupIntent$public_release()Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object v0
.end method

.method public final getType$public_release()Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InnerError(charge="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->charge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", declineCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->declineCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", docUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->docUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->param:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setupIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->setupIntent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/serialization/InnerError;->type:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
