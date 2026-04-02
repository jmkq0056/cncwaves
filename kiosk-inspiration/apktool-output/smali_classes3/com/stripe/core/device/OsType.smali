.class public interface abstract Lcom/stripe/core/device/OsType;
.super Ljava/lang/Object;
.source "OsType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/device/OsType$Eng;,
        Lcom/stripe/core/device/OsType$Other;,
        Lcom/stripe/core/device/OsType$User;,
        Lcom/stripe/core/device/OsType$UserDebug;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0004\n\u000b\u000c\rR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0004\u000e\u000f\u0010\u0011\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/device/OsType;",
        "",
        "romType",
        "Lcom/stripe/device/RomType;",
        "getRomType",
        "()Lcom/stripe/device/RomType;",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
        "Eng",
        "Other",
        "User",
        "UserDebug",
        "Lcom/stripe/core/device/OsType$Eng;",
        "Lcom/stripe/core/device/OsType$Other;",
        "Lcom/stripe/core/device/OsType$User;",
        "Lcom/stripe/core/device/OsType$UserDebug;",
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


# virtual methods
.method public abstract getRomType()Lcom/stripe/device/RomType;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
