.class public final synthetic Lcom/stripe/bbpos/bbdevice/ota/a$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/ota/a;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/a;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/a$$ExternalSyntheticLambda4;->f$0:Lcom/stripe/bbpos/bbdevice/ota/a;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/a$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ota/a$$ExternalSyntheticLambda4;->f$2:Lorg/json/JSONObject;

    iput p4, p0, Lcom/stripe/bbpos/bbdevice/ota/a$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/a$$ExternalSyntheticLambda4;->f$0:Lcom/stripe/bbpos/bbdevice/ota/a;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/a$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/a$$ExternalSyntheticLambda4;->f$2:Lorg/json/JSONObject;

    iget v3, p0, Lcom/stripe/bbpos/bbdevice/ota/a$$ExternalSyntheticLambda4;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/a;->$r8$lambda$BfzNUPlPQKK7ybwFEPbEpal_43s(Lcom/stripe/bbpos/bbdevice/ota/a;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method
