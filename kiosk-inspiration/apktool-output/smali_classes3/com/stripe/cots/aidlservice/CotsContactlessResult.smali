.class public final Lcom/stripe/cots/aidlservice/CotsContactlessResult;
.super Lcom/squareup/wire/Message;
.source "CotsContactlessResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;,
        Lcom/stripe/cots/aidlservice/CotsContactlessResult$Companion;,
        Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;,
        Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0017\u0018\u0019\u001aBC\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJD\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0006H\u0016R\u0010\u0010\u0008\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;",
        "outcome",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;",
        "emvBlob",
        "",
        "encryptedTrack2",
        "cryptogram",
        "ttpaPinData",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "ContactlessOutcome",
        "TtpaPinData",
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
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/cots/aidlservice/CotsContactlessResult$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final cryptogram:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final emvBlob:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        redacted = true
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final encryptedTrack2:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        redacted = true
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.cots.aidlservice.CotsContactlessResult$ContactlessOutcome#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.cots.aidlservice.CotsContactlessResult$TtpaPinData#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->Companion:Lcom/stripe/cots/aidlservice/CotsContactlessResult$Companion;

    .line 186
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 185
    const-class v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 185
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;-><init>(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;)V
    .locals 1

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emvBlob"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedTrack2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptogram"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 39
    iput-object p2, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 38
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 30
    const-string v0, ""

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 73
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 30
    invoke-direct/range {p2 .. p8}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;-><init>(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/cots/aidlservice/CotsContactlessResult;Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/cots/aidlservice/CotsContactlessResult;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 123
    iget-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 124
    iget-object p2, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 125
    iget-object p3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 126
    iget-object p4, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 127
    iget-object p5, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 128
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 122
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->copy(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsContactlessResult;
    .locals 8

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emvBlob"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedTrack2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptogram"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;-><init>(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    invoke-virtual {p1}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    if-eq v1, v3, :cond_3

    return v2

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 94
    :cond_6
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    iget-object p1, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 99
    iget v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->hashCode:I

    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 102
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 103
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 104
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 105
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 106
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 107
    iput v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->newBuilder()Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;
    .locals 2

    .line 76
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;

    invoke-direct {v0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 78
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->emvBlob:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->encryptedTrack2:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->cryptogram:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    .line 82
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 114
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "outcome="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v2, "emvBlob=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v2, "encryptedTrack2=\u2588\u2588"

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cryptogram="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ttpaPinData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CotsContactlessResult{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
