.class public final enum Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;
.super Ljava/lang/Enum;
.source "AidlServices.kt"

# interfaces
.implements Lcom/stripe/core/aidlrpc/AidlServices;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/aidlrpc/AidlServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdaterService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;",
        ">;",
        "Lcom/stripe/core/aidlrpc/AidlServices;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;",
        "",
        "Lcom/stripe/core/aidlrpc/AidlServices;",
        "descriptor",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getDescriptor",
        "()Ljava/lang/String;",
        "RegistrationService",
        "DeviceSettingsService",
        "AssetUpdateService",
        "aidlrpc_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

.field public static final enum AssetUpdateService:Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

.field public static final enum DeviceSettingsService:Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

.field public static final enum RegistrationService:Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;


# instance fields
.field private final descriptor:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;
    .locals 3

    sget-object v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->RegistrationService:Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    sget-object v1, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->DeviceSettingsService:Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    sget-object v2, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->AssetUpdateService:Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    const/4 v1, 0x0

    const-string v2, "REGISTRATION_SERVICE"

    const-string v3, "RegistrationService"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->RegistrationService:Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    .line 21
    new-instance v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    const/4 v1, 0x1

    const-string v2, "DEVICE_SETTINGS_SERVICE"

    const-string v3, "DeviceSettingsService"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->DeviceSettingsService:Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    .line 22
    new-instance v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    const/4 v1, 0x2

    const-string v2, "ASSET_UPDATES_SERVICE"

    const-string v3, "AssetUpdateService"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->AssetUpdateService:Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    invoke-static {}, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->$values()[Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->$VALUES:[Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->descriptor:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;
    .locals 1

    const-class v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;
    .locals 1

    sget-object v0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->$VALUES:[Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;

    return-object v0
.end method


# virtual methods
.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;->descriptor:Ljava/lang/String;

    return-object v0
.end method
