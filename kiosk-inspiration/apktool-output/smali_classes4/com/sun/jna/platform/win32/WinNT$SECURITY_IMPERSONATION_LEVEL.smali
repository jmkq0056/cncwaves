.class public abstract Lcom/sun/jna/platform/win32/WinNT$SECURITY_IMPERSONATION_LEVEL;
.super Ljava/lang/Object;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SECURITY_IMPERSONATION_LEVEL"
.end annotation


# static fields
.field public static final SecurityAnonymous:I = 0x0

.field public static final SecurityDelegation:I = 0x3

.field public static final SecurityIdentification:I = 0x1

.field public static final SecurityImpersonation:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
