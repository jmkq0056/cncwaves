.class public abstract Lcom/sun/jna/platform/win32/Secur32$EXTENDED_NAME_FORMAT;
.super Ljava/lang/Object;
.source "Secur32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Secur32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EXTENDED_NAME_FORMAT"
.end annotation


# static fields
.field public static final NameCanonical:I = 0x7

.field public static final NameCanonicalEx:I = 0x9

.field public static final NameDisplay:I = 0x3

.field public static final NameDnsDomain:I = 0xc

.field public static final NameFullyQualifiedDN:I = 0x1

.field public static final NameSamCompatible:I = 0x2

.field public static final NameServicePrincipal:I = 0xa

.field public static final NameUniqueId:I = 0x6

.field public static final NameUnknown:I = 0x0

.field public static final NameUserPrincipal:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
