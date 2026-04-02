.class public Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "value"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "INVOKEKIND"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND$ByReference;
    }
.end annotation


# static fields
.field public static final INVOKE_FUNC:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

.field public static final INVOKE_PROPERTYGET:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

.field public static final INVOKE_PROPERTYPUT:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

.field public static final INVOKE_PROPERTYPUTREF:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1554
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_FUNC:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    .line 1556
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_PROPERTYGET:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    .line 1558
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_PROPERTYPUT:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    .line 1560
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->INVOKE_PROPERTYPUTREF:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1565
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1568
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1569
    iput p1, p0, Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;->value:I

    return-void
.end method
