.class public Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSize",
        "szEntryName",
        "szPhoneNumber",
        "szCallbackNumber",
        "szUserName",
        "szPassword",
        "szDomain"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASDIALPARAMS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;
    }
.end annotation


# instance fields
.field public dwSize:I

.field public szCallbackNumber:[C

.field public szDomain:[C

.field public szEntryName:[C

.field public szPassword:[C

.field public szPhoneNumber:[C

.field public szUserName:[C


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 248
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x101

    .line 270
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szEntryName:[C

    const/16 v1, 0x81

    .line 276
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szPhoneNumber:[C

    .line 284
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szCallbackNumber:[C

    .line 290
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szUserName:[C

    .line 296
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szPassword:[C

    const/16 v0, 0x10

    .line 303
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szDomain:[C

    .line 249
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->dwSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 253
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x101

    .line 270
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szEntryName:[C

    const/16 v0, 0x81

    .line 276
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szPhoneNumber:[C

    .line 284
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szCallbackNumber:[C

    .line 290
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szUserName:[C

    .line 296
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szPassword:[C

    const/16 p1, 0x10

    .line 303
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->szDomain:[C

    .line 254
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;->read()V

    return-void
.end method
