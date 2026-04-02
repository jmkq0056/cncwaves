.class public abstract Lcom/sun/jna/platform/win32/LMJoin$NETSETUP_JOIN_STATUS;
.super Ljava/lang/Object;
.source "LMJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/LMJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NETSETUP_JOIN_STATUS"
.end annotation


# static fields
.field public static final NetSetupDomainName:I = 0x3

.field public static final NetSetupUnjoined:I = 0x1

.field public static final NetSetupUnknownStatus:I = 0x0

.field public static final NetSetupWorkgroupName:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
