.class public abstract Lcom/sun/jna/platform/win32/Wdm$KEY_INFORMATION_CLASS;
.super Ljava/lang/Object;
.source "Wdm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Wdm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KEY_INFORMATION_CLASS"
.end annotation


# static fields
.field public static final KeyBasicInformation:I = 0x0

.field public static final KeyCachedInformation:I = 0x4

.field public static final KeyFullInformation:I = 0x2

.field public static final KeyNameInformation:I = 0x3

.field public static final KeyNodeInformation:I = 0x1

.field public static final KeyVirtualizationInformation:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
