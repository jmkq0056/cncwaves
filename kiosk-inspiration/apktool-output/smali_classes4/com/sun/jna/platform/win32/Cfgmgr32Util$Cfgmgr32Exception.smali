.class public Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;
.super Ljava/lang/RuntimeException;
.source "Cfgmgr32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Cfgmgr32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cfgmgr32Exception"
.end annotation


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    iput p1, p0, Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/sun/jna/platform/win32/Cfgmgr32Util$Cfgmgr32Exception;->errorCode:I

    return v0
.end method
