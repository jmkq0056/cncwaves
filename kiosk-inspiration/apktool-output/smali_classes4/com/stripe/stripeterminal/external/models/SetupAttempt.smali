.class public final Lcom/stripe/stripeterminal/external/models/SetupAttempt;
.super Ljava/lang/Object;
.source "SetupAttempt.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/SetupAttempt$$serializer;,
        Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008*\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 P2\u00060\u0001j\u0002`\u0002:\u0002OPB\u0099\u0001\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0002\u0010\u001aBu\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0002\u0010\u001bJ\t\u00105\u001a\u00020\u0006H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u00107\u001a\u00020\u0015H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010:\u001a\u00020\tH\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010<\u001a\u00020\u000cH\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010?\u001a\u00020\u0010H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u008f\u0001\u0010A\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00c6\u0001J\u0013\u0010B\u001a\u00020\u000c2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u00d6\u0003J\t\u0010E\u001a\u00020\u0004H\u00d6\u0001J\t\u0010F\u001a\u00020\u0006H\u00d6\u0001J&\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MH\u00c1\u0001\u00a2\u0006\u0002\u0008NR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008#\u0010\u001fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001fR\u001c\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008%\u0010\u001d\u001a\u0004\u0008\u000b\u0010&R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\'\u0010\u001d\u001a\u0004\u0008(\u0010\u001fR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008+\u0010\u001d\u001a\u0004\u0008,\u0010\u001fR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010\u001d\u001a\u0004\u00080\u0010\u001fR\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupAttempt;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "id",
        "",
        "applicationId",
        "created",
        "",
        "customerId",
        "isLiveMode",
        "",
        "onBehalfOfId",
        "paymentMethodId",
        "paymentMethodDetails",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;",
        "setupError",
        "Lcom/stripe/stripeterminal/external/models/SetupError;",
        "setupIntentId",
        "status",
        "Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;",
        "usage",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;)V",
        "getApplicationId$annotations",
        "()V",
        "getApplicationId",
        "()Ljava/lang/String;",
        "getCreated",
        "()J",
        "getCustomerId$annotations",
        "getCustomerId",
        "getId",
        "isLiveMode$annotations",
        "()Z",
        "getOnBehalfOfId$annotations",
        "getOnBehalfOfId",
        "getPaymentMethodDetails",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;",
        "getPaymentMethodId$annotations",
        "getPaymentMethodId",
        "getSetupError",
        "()Lcom/stripe/stripeterminal/external/models/SetupError;",
        "getSetupIntentId$annotations",
        "getSetupIntentId",
        "getStatus",
        "()Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;",
        "getUsage",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final created:J

.field private final customerId:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final isLiveMode:Z

.field private final onBehalfOfId:Ljava/lang/String;

.field private final paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

.field private final paymentMethodId:Ljava/lang/String;

.field private final setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

.field private final setupIntentId:Ljava/lang/String;

.field private final status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

.field private final usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->Companion:Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;

    const/16 v0, 0xc

    .line 16
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

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->Companion:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentUsage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "application"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "customer"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "livemode"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "onBehalfOf"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "paymentMethod"
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "setupIntent"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit16 v0, p1, 0xfff

    const/16 v1, 0xfff

    if-eq v1, v0, :cond_0

    .line 16
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttempt$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupAttempt$$serializer;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SetupAttempt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    iput-object p11, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    iput-object p12, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    iput-object p13, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodDetails"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    .line 40
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    .line 47
    iput-boolean p6, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    .line 54
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    .line 66
    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    .line 72
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    .line 77
    iput-object p11, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    .line 83
    iput-object p12, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    .line 88
    iput-object p13, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 16
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/SetupAttempt;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupAttempt;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    goto :goto_1

    :cond_2
    move-wide v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v4, p5

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    goto :goto_3

    :cond_4
    move/from16 v5, p6

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object/from16 v6, p7

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object/from16 v7, p8

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    goto :goto_6

    :cond_7
    move-object/from16 v8, p9

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    goto :goto_7

    :cond_8
    move-object/from16 v9, p10

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    goto :goto_8

    :cond_9
    move-object/from16 v10, p11

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    goto :goto_9

    :cond_a
    move-object/from16 v11, p12

    :goto_9
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    move-object/from16 p15, v0

    goto :goto_a

    :cond_b
    move-object/from16 p15, p13

    :goto_a
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-wide/from16 p5, v2

    move-object/from16 p7, v4

    move/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    invoke-virtual/range {p2 .. p15}, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;)Lcom/stripe/stripeterminal/external/models/SetupAttempt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getApplicationId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "application"
    .end annotation

    return-void
.end method

.method public static synthetic getCustomerId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "customer"
    .end annotation

    return-void
.end method

.method public static synthetic getOnBehalfOfId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "onBehalfOf"
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethodId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paymentMethod"
    .end annotation

    return-void
.end method

.method public static synthetic getSetupIntentId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "setupIntent"
    .end annotation

    return-void
.end method

.method public static synthetic isLiveMode$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "livemode"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/SetupAttempt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 16
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    const/4 v3, 0x7

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupError$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupError$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    const/16 v3, 0x8

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xa

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xb

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    return-object v0
.end method

.method public final component12()Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    return-object v0
.end method

.method public final component9()Lcom/stripe/stripeterminal/external/models/SetupError;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;)Lcom/stripe/stripeterminal/external/models/SetupAttempt;
    .locals 15

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodDetails"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/stripe/stripeterminal/external/models/SetupAttempt;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreated()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    return-wide v0
.end method

.method public final getCustomerId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnBehalfOfId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethodDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    return-object v0
.end method

.method public final getPaymentMethodId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSetupError()Lcom/stripe/stripeterminal/external/models/SetupError;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    return-object v0
.end method

.method public final getSetupIntentId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    return-object v0
.end method

.method public final getUsage()Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupError;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public final isLiveMode()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetupAttempt(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", applicationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->created:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->customerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLiveMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->isLiveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onBehalfOfId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->onBehalfOfId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentMethodId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentMethodDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setupError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupError:Lcom/stripe/stripeterminal/external/models/SetupError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setupIntentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->setupIntentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->status:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
