.class public final Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;
.super Lcom/squareup/wire/Message;
.source "GenerateRegistrationCodeRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;,
        Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;",
        "Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B/\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ0\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0008H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\rR\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "locale",
        "Lcom/stripe/proto/model/config/Locale;",
        "locale_string",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;)V",
        "getLocale$annotations",
        "()V",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final device_info:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        jsonName = "deviceInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final locale:Lcom/stripe/proto/model/config/Locale;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.Locale#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final locale_string:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "localeString"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->Companion:Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Companion;

    .line 144
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 143
    const-class v1, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 147
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 143
    new-instance v3, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale_string"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 40
    iput-object p2, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale:Lcom/stripe/proto/model/config/Locale;

    .line 49
    iput-object p3, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale_string:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 48
    sget-object p2, Lcom/stripe/proto/model/config/Locale;->INVALID_LOCALE:Lcom/stripe/proto/model/config/Locale;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 57
    const-string p3, ""

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 58
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 30
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 100
    iget-object p1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 101
    iget-object p2, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale:Lcom/stripe/proto/model/config/Locale;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 102
    iget-object p3, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale_string:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 99
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->copy(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getLocale$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "locale is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;
    .locals 1

    const-string v0, "locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale_string"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 71
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale:Lcom/stripe/proto/model/config/Locale;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale:Lcom/stripe/proto/model/config/Locale;

    if-eq v1, v3, :cond_4

    return v2

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale_string:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale_string:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    iget v0, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->hashCode:I

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 83
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 84
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale:Lcom/stripe/proto/model/config/Locale;

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 85
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale_string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    iput v0, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->newBuilder()Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;
    .locals 2

    .line 61
    new-instance v0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 63
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale:Lcom/stripe/proto/model/config/Locale;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;->locale:Lcom/stripe/proto/model/config/Locale;

    .line 64
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale_string:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;->locale_string:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locale="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale:Lcom/stripe/proto/model/config/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locale_string="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;->locale_string:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "GenerateRegistrationCodeRequest{"

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
