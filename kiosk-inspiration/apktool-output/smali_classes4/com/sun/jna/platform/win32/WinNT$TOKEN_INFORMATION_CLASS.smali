.class public abstract Lcom/sun/jna/platform/win32/WinNT$TOKEN_INFORMATION_CLASS;
.super Ljava/lang/Object;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TOKEN_INFORMATION_CLASS"
.end annotation


# static fields
.field public static final TokenAccessInformation:I = 0x16

.field public static final TokenAuditPolicy:I = 0x10

.field public static final TokenDefaultDacl:I = 0x6

.field public static final TokenElevation:I = 0x14

.field public static final TokenElevationType:I = 0x12

.field public static final TokenGroups:I = 0x2

.field public static final TokenGroupsAndPrivileges:I = 0xd

.field public static final TokenHasRestrictions:I = 0x15

.field public static final TokenImpersonationLevel:I = 0x9

.field public static final TokenIntegrityLevel:I = 0x19

.field public static final TokenLinkedToken:I = 0x13

.field public static final TokenLogonSid:I = 0x1c

.field public static final TokenMandatoryPolicy:I = 0x1b

.field public static final TokenOrigin:I = 0x11

.field public static final TokenOwner:I = 0x4

.field public static final TokenPrimaryGroup:I = 0x5

.field public static final TokenPrivileges:I = 0x3

.field public static final TokenRestrictedSids:I = 0xb

.field public static final TokenSandBoxInert:I = 0xf

.field public static final TokenSessionId:I = 0xc

.field public static final TokenSessionReference:I = 0xe

.field public static final TokenSource:I = 0x7

.field public static final TokenStatistics:I = 0xa

.field public static final TokenType:I = 0x8

.field public static final TokenUIAccess:I = 0x1a

.field public static final TokenUser:I = 0x1

.field public static final TokenVirtualizationAllowed:I = 0x17

.field public static final TokenVirtualizationEnabled:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
