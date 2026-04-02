.class public Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;
.super Lcom/sun/jna/platform/win32/Netapi32Util$User;
.source "Netapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Netapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# instance fields
.field public flags:I

.field public fullName:Ljava/lang/String;

.field public sid:Lcom/sun/jna/platform/win32/WinNT$PSID;

.field public sidString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Netapi32Util$User;-><init>()V

    return-void
.end method
