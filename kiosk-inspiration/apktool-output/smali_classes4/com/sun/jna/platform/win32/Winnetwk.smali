.class public abstract Lcom/sun/jna/platform/win32/Winnetwk;
.super Ljava/lang/Object;
.source "Winnetwk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winnetwk$REMOTE_NAME_INFO;,
        Lcom/sun/jna/platform/win32/Winnetwk$UNIVERSAL_NAME_INFO;,
        Lcom/sun/jna/platform/win32/Winnetwk$NETRESOURCE;,
        Lcom/sun/jna/platform/win32/Winnetwk$ConnectFlag;,
        Lcom/sun/jna/platform/win32/Winnetwk$RESOURCEUSAGE;,
        Lcom/sun/jna/platform/win32/Winnetwk$RESOURCEDISPLAYTYPE;,
        Lcom/sun/jna/platform/win32/Winnetwk$RESOURCETYPE;,
        Lcom/sun/jna/platform/win32/Winnetwk$RESOURCESCOPE;
    }
.end annotation


# static fields
.field public static REMOTE_NAME_INFO_LEVEL:I = 0x2

.field public static UNIVERSAL_NAME_INFO_LEVEL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
