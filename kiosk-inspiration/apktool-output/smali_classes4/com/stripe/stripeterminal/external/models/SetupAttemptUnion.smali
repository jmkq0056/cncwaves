.class public abstract Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;
.super Ljava/lang/Object;
.source "SetupAttemptUnion.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Companion;,
        Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;,
        Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Reference;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00082\u00060\u0001j\u0002`\u0002:\u0003\u0008\t\nB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0003R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0002\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "()V",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "Companion",
        "Expanded",
        "Reference",
        "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;",
        "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Reference;",
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
    with = Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;->Companion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method
