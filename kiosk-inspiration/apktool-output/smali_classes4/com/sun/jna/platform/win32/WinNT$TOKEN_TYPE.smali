.class public abstract Lcom/sun/jna/platform/win32/WinNT$TOKEN_TYPE;
.super Ljava/lang/Object;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TOKEN_TYPE"
.end annotation


# static fields
.field public static final TokenImpersonation:I = 0x2

.field public static final TokenPrimary:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
