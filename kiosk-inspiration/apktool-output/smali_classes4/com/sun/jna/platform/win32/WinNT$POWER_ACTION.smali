.class public interface abstract Lcom/sun/jna/platform/win32/WinNT$POWER_ACTION;
.super Ljava/lang/Object;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "POWER_ACTION"
.end annotation


# static fields
.field public static final PowerActionDisplayOff:I = 0x8

.field public static final PowerActionHibernate:I = 0x3

.field public static final PowerActionNone:I = 0x0

.field public static final PowerActionReserved:I = 0x1

.field public static final PowerActionShutdown:I = 0x4

.field public static final PowerActionShutdownOff:I = 0x6

.field public static final PowerActionShutdownReset:I = 0x5

.field public static final PowerActionSleep:I = 0x2

.field public static final PowerActionWarmEject:I = 0x7
