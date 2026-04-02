.class public interface abstract Lcom/sun/jna/platform/win32/DsGetDC;
.super Ljava/lang/Object;
.source "DsGetDC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;,
        Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;,
        Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO;
    }
.end annotation


# static fields
.field public static final DS_DOMAIN_DIRECT_INBOUND:I = 0x20

.field public static final DS_DOMAIN_DIRECT_OUTBOUND:I = 0x2

.field public static final DS_DOMAIN_IN_FOREST:I = 0x1

.field public static final DS_DOMAIN_NATIVE_MODE:I = 0x10

.field public static final DS_DOMAIN_PRIMARY:I = 0x8

.field public static final DS_DOMAIN_TREE_ROOT:I = 0x4

.field public static final DS_DOMAIN_VALID_FLAGS:I = 0x3f
