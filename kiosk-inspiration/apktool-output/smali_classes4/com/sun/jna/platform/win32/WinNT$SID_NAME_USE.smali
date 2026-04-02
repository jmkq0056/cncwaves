.class public abstract Lcom/sun/jna/platform/win32/WinNT$SID_NAME_USE;
.super Ljava/lang/Object;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SID_NAME_USE"
.end annotation


# static fields
.field public static final SidTypeAlias:I = 0x4

.field public static final SidTypeComputer:I = 0x9

.field public static final SidTypeDeletedAccount:I = 0x6

.field public static final SidTypeDomain:I = 0x3

.field public static final SidTypeGroup:I = 0x2

.field public static final SidTypeInvalid:I = 0x7

.field public static final SidTypeLabel:I = 0xa

.field public static final SidTypeUnknown:I = 0x8

.field public static final SidTypeUser:I = 0x1

.field public static final SidTypeWellKnownGroup:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
