.class public interface abstract Lcom/stripe/stripeterminal/external/models/ExpandableLocation;
.super Ljava/lang/Object;
.source "ExpandableLocation.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Companion;,
        Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;,
        Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008w\u0018\u0000 \u00072\u00060\u0001j\u0002`\u0002:\u0003\u0007\u0008\tR\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\n\u000b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000c\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "Companion",
        "Expanded",
        "Reference",
        "Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;",
        "Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Companion;->$$INSTANCE:Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Companion;

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;->Companion:Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Companion;

    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method
