.class public final synthetic Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dantsu/escposprinter/EscPosPrinter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/dantsu/escposprinter/EscPosPrinter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda1;->f$0:Lcom/dantsu/escposprinter/EscPosPrinter;

    iput-object p2, p0, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda1;->f$0:Lcom/dantsu/escposprinter/EscPosPrinter;

    iget-object v1, p0, Lcom/example/digitalkiosk/PrinterService$Companion$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/example/digitalkiosk/PrinterService$Companion;->$r8$lambda$_Fe8rFlB8V0LdsxAWQkhydIQm5g(Lcom/dantsu/escposprinter/EscPosPrinter;Ljava/lang/String;)V

    return-void
.end method
