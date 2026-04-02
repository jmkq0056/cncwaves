.class public Lcom/sun/jna/platform/win32/OaIdl$ScodeArg;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "scodeArg"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScodeArg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$ScodeArg$ByReference;
    }
.end annotation


# instance fields
.field public scodeArg:[Lcom/sun/jna/platform/win32/WinDef$SCODE;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1362
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x1

    .line 1359
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinDef$SCODE;

    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$SCODE;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinDef$SCODE;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$ScodeArg;->scodeArg:[Lcom/sun/jna/platform/win32/WinDef$SCODE;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 1366
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x1

    .line 1359
    new-array p1, p1, [Lcom/sun/jna/platform/win32/WinDef$SCODE;

    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$SCODE;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$SCODE;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$ScodeArg;->scodeArg:[Lcom/sun/jna/platform/win32/WinDef$SCODE;

    .line 1367
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$ScodeArg;->read()V

    return-void
.end method
