.class public interface abstract Lcom/sun/jna/platform/win32/WinNT$SYSTEM_POWER_STATE;
.super Ljava/lang/Object;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SYSTEM_POWER_STATE"
.end annotation


# static fields
.field public static final PowerSystemHibernate:I = 0x5

.field public static final PowerSystemMaximum:I = 0x7

.field public static final PowerSystemShutdown:I = 0x6

.field public static final PowerSystemSleeping1:I = 0x2

.field public static final PowerSystemSleeping2:I = 0x3

.field public static final PowerSystemSleeping3:I = 0x4

.field public static final PowerSystemUnspecified:I = 0x0

.field public static final PowerSystemWorking:I = 0x1
