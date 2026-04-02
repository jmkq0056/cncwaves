.class public final enum Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;
.super Ljava/lang/Enum;
.source "Advapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventLogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

.field public static final enum AuditFailure:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

.field public static final enum AuditSuccess:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

.field public static final enum Error:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

.field public static final enum Informational:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

.field public static final enum Warning:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2323
    new-instance v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    const-string v1, "Error"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->Error:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    new-instance v1, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    const-string v2, "Warning"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->Warning:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    new-instance v2, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    const-string v3, "Informational"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->Informational:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    new-instance v3, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    const-string v4, "AuditSuccess"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->AuditSuccess:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    new-instance v4, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    const-string v5, "AuditFailure"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->AuditFailure:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    .line 2322
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->$VALUES:[Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;
    .locals 1

    .line 2322
    const-class v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;
    .locals 1

    .line 2322
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->$VALUES:[Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    invoke-virtual {v0}, [Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    return-object v0
.end method
