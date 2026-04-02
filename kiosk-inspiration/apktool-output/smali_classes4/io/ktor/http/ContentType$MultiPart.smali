.class public final Lio/ktor/http/ContentType$MultiPart;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiPart"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0011\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/ktor/http/ContentType$MultiPart;",
        "",
        "()V",
        "Alternative",
        "Lio/ktor/http/ContentType;",
        "getAlternative",
        "()Lio/ktor/http/ContentType;",
        "Any",
        "getAny",
        "ByteRanges",
        "getByteRanges",
        "Encrypted",
        "getEncrypted",
        "FormData",
        "getFormData",
        "Mixed",
        "getMixed",
        "Related",
        "getRelated",
        "Signed",
        "getSigned",
        "ktor-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Alternative:Lio/ktor/http/ContentType;

.field private static final Any:Lio/ktor/http/ContentType;

.field private static final ByteRanges:Lio/ktor/http/ContentType;

.field private static final Encrypted:Lio/ktor/http/ContentType;

.field private static final FormData:Lio/ktor/http/ContentType;

.field public static final INSTANCE:Lio/ktor/http/ContentType$MultiPart;

.field private static final Mixed:Lio/ktor/http/ContentType;

.field private static final Related:Lio/ktor/http/ContentType;

.field private static final Signed:Lio/ktor/http/ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lio/ktor/http/ContentType$MultiPart;

    invoke-direct {v0}, Lio/ktor/http/ContentType$MultiPart;-><init>()V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->INSTANCE:Lio/ktor/http/ContentType$MultiPart;

    .line 233
    new-instance v1, Lio/ktor/http/ContentType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "multipart"

    const-string v3, "*"

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lio/ktor/http/ContentType$MultiPart;->Any:Lio/ktor/http/ContentType;

    .line 234
    new-instance v2, Lio/ktor/http/ContentType;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "multipart"

    const-string v4, "mixed"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/ktor/http/ContentType$MultiPart;->Mixed:Lio/ktor/http/ContentType;

    .line 235
    new-instance v3, Lio/ktor/http/ContentType;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "multipart"

    const-string v5, "alternative"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lio/ktor/http/ContentType$MultiPart;->Alternative:Lio/ktor/http/ContentType;

    .line 236
    new-instance v4, Lio/ktor/http/ContentType;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "multipart"

    const-string v6, "related"

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lio/ktor/http/ContentType$MultiPart;->Related:Lio/ktor/http/ContentType;

    .line 237
    new-instance v5, Lio/ktor/http/ContentType;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "multipart"

    const-string v7, "form-data"

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lio/ktor/http/ContentType$MultiPart;->FormData:Lio/ktor/http/ContentType;

    .line 238
    new-instance v6, Lio/ktor/http/ContentType;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "multipart"

    const-string v8, "signed"

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lio/ktor/http/ContentType$MultiPart;->Signed:Lio/ktor/http/ContentType;

    .line 239
    new-instance v0, Lio/ktor/http/ContentType;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "multipart"

    const-string v2, "encrypted"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->Encrypted:Lio/ktor/http/ContentType;

    .line 240
    new-instance v1, Lio/ktor/http/ContentType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "multipart"

    const-string v3, "byteranges"

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lio/ktor/http/ContentType$MultiPart;->ByteRanges:Lio/ktor/http/ContentType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlternative()Lio/ktor/http/ContentType;
    .locals 1

    .line 235
    sget-object v0, Lio/ktor/http/ContentType$MultiPart;->Alternative:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getAny()Lio/ktor/http/ContentType;
    .locals 1

    .line 233
    sget-object v0, Lio/ktor/http/ContentType$MultiPart;->Any:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getByteRanges()Lio/ktor/http/ContentType;
    .locals 1

    .line 240
    sget-object v0, Lio/ktor/http/ContentType$MultiPart;->ByteRanges:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getEncrypted()Lio/ktor/http/ContentType;
    .locals 1

    .line 239
    sget-object v0, Lio/ktor/http/ContentType$MultiPart;->Encrypted:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getFormData()Lio/ktor/http/ContentType;
    .locals 1

    .line 237
    sget-object v0, Lio/ktor/http/ContentType$MultiPart;->FormData:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getMixed()Lio/ktor/http/ContentType;
    .locals 1

    .line 234
    sget-object v0, Lio/ktor/http/ContentType$MultiPart;->Mixed:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getRelated()Lio/ktor/http/ContentType;
    .locals 1

    .line 236
    sget-object v0, Lio/ktor/http/ContentType$MultiPart;->Related:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getSigned()Lio/ktor/http/ContentType;
    .locals 1

    .line 238
    sget-object v0, Lio/ktor/http/ContentType$MultiPart;->Signed:Lio/ktor/http/ContentType;

    return-object v0
.end method
