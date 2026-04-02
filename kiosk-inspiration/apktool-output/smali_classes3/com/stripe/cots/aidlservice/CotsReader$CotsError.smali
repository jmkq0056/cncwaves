.class public final enum Lcom/stripe/cots/aidlservice/CotsReader$CotsError;
.super Ljava/lang/Enum;
.source "CotsReader.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CotsError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0086\u0081\u0002\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0015B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNKNOWN",
        "NONE",
        "DISCOVERY_MISSING_KEY_CERTIFICATES",
        "DISCOVERY_UNSUPPORTED_ANDROID_VERSION",
        "DISCOVERY_MISSING_NFC_READER",
        "DISCOVERY_UNTRUSTED_HARDWARE",
        "ATTESTATION_DEVICE_TAMPERED",
        "ATTESTATION_API_CONNECTION_ERROR",
        "ATTESTATION_SERVER_ERROR",
        "ATTESTATION_API_RESPONSE_DECODING",
        "UNEXPECTED_ERROR",
        "DISCOVERY_DEBUG_NOT_ALLOWED",
        "DISCOVERY_UNTRUSTED_SOFTWARE",
        "Companion",
        "proto_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final Companion:Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion;

.field public static final enum DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum NONE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum UNEXPECTED_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public static final enum UNKNOWN:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/cots/aidlservice/CotsReader$CotsError;
    .locals 13

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->NONE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v2, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v3, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v4, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v5, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v6, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v7, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v8, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v9, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v10, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->UNEXPECTED_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v11, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v12, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    filled-new-array/range {v0 .. v12}, [Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 238
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 239
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "NONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->NONE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 240
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "DISCOVERY_MISSING_KEY_CERTIFICATES"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 241
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "DISCOVERY_UNSUPPORTED_ANDROID_VERSION"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 242
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "DISCOVERY_MISSING_NFC_READER"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 243
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "DISCOVERY_UNTRUSTED_HARDWARE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 244
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "ATTESTATION_DEVICE_TAMPERED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 245
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "ATTESTATION_API_CONNECTION_ERROR"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 246
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "ATTESTATION_SERVER_ERROR"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 247
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "ATTESTATION_API_RESPONSE_DECODING"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 248
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "UNEXPECTED_ERROR"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->UNEXPECTED_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 249
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "DISCOVERY_DEBUG_NOT_ALLOWED"

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 250
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    const-string v2, "DISCOVERY_UNTRUSTED_SOFTWARE"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v4, v3}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-static {}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->$values()[Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    move-result-object v1

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->$VALUES:[Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->Companion:Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion;

    .line 255
    const-class v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 257
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 255
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 236
    iput p3, p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/cots/aidlservice/CotsReader$CotsError;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->Companion:Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion;->fromValue(I)Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsReader$CotsError;
    .locals 1

    const-class v0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0
.end method

.method public static values()[Lcom/stripe/cots/aidlservice/CotsReader$CotsError;
    .locals 1

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->$VALUES:[Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->value:I

    return v0
.end method
