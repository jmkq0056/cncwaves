.class public final Lcom/stripe/core/device/OsType$Eng;
.super Ljava/lang/Object;
.source "OsType.kt"

# interfaces
.implements Lcom/stripe/core/device/OsType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/device/OsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eng"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\n\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0008H\u00d6\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/core/device/OsType$Eng;",
        "Lcom/stripe/core/device/OsType;",
        "()V",
        "romType",
        "Lcom/stripe/device/RomType;",
        "getRomType",
        "()Lcom/stripe/device/RomType;",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "device_release"
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
.field public static final INSTANCE:Lcom/stripe/core/device/OsType$Eng;

.field private static final romType:Lcom/stripe/device/RomType;

.field private static final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/device/OsType$Eng;

    invoke-direct {v0}, Lcom/stripe/core/device/OsType$Eng;-><init>()V

    sput-object v0, Lcom/stripe/core/device/OsType$Eng;->INSTANCE:Lcom/stripe/core/device/OsType$Eng;

    .line 23
    const-string v0, "eng"

    sput-object v0, Lcom/stripe/core/device/OsType$Eng;->value:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/stripe/device/RomType;->ENG:Lcom/stripe/device/RomType;

    sput-object v0, Lcom/stripe/core/device/OsType$Eng;->romType:Lcom/stripe/device/RomType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/device/OsType$Eng;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/stripe/core/device/OsType$Eng;

    return v0
.end method

.method public getRomType()Lcom/stripe/device/RomType;
    .locals 1

    .line 24
    sget-object v0, Lcom/stripe/core/device/OsType$Eng;->romType:Lcom/stripe/device/RomType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/stripe/core/device/OsType$Eng;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const v0, -0x2dbbc0b5

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Eng"

    return-object v0
.end method
