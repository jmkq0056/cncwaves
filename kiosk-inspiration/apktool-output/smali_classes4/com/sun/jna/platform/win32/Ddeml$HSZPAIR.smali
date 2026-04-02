.class public Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;
.super Lcom/sun/jna/Structure;
.source "Ddeml.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "service",
        "topic"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ddeml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HSZPAIR"
.end annotation


# instance fields
.field public service:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public topic:Lcom/sun/jna/platform/win32/Ddeml$HSZ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;->service:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    .line 84
    iput-object p2, p0, Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;->topic:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    return-void
.end method
