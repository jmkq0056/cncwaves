.class final Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$buildApplicationSpecificTlvs$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EmvBlob.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->buildApplicationSpecificTlvs(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Byte;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0005\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$buildApplicationSpecificTlvs$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$buildApplicationSpecificTlvs$1$1;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$buildApplicationSpecificTlvs$1$1;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$buildApplicationSpecificTlvs$1$1;->INSTANCE:Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$buildApplicationSpecificTlvs$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(B)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 200
    invoke-static {p1, v0, v1, v0}, Lkotlin/text/HexExtensionsKt;->toHexString$default(BLkotlin/text/HexFormat;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/16 v1, 0x30

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion$buildApplicationSpecificTlvs$1$1;->invoke(B)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
