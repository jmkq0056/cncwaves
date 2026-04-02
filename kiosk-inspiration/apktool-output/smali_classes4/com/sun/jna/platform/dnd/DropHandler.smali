.class public abstract Lcom/sun/jna/platform/dnd/DropHandler;
.super Ljava/lang/Object;
.source "DropHandler.java"

# interfaces
.implements Ljava/awt/dnd/DropTargetListener;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private acceptedActions:I

.field private acceptedFlavors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation
.end field

.field private active:Z

.field private dropTarget:Ljava/awt/dnd/DropTarget;

.field private lastAction:Ljava/lang/String;

.field private painter:Lcom/sun/jna/platform/dnd/DropTargetPainter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const-class v0, Lcom/sun/jna/platform/dnd/DropHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/dnd/DropHandler;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Component;I)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    new-array v0, v0, [Ljava/awt/datatransfer/DataFlavor;

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/platform/dnd/DropHandler;-><init>(Ljava/awt/Component;I[Ljava/awt/datatransfer/DataFlavor;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Component;I[Ljava/awt/datatransfer/DataFlavor;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/dnd/DropHandler;-><init>(Ljava/awt/Component;I[Ljava/awt/datatransfer/DataFlavor;Lcom/sun/jna/platform/dnd/DropTargetPainter;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Component;I[Ljava/awt/datatransfer/DataFlavor;Lcom/sun/jna/platform/dnd/DropTargetPainter;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/sun/jna/platform/dnd/DropHandler;->active:Z

    .line 141
    iput p2, p0, Lcom/sun/jna/platform/dnd/DropHandler;->acceptedActions:I

    .line 142
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/jna/platform/dnd/DropHandler;->acceptedFlavors:Ljava/util/List;

    .line 143
    iput-object p4, p0, Lcom/sun/jna/platform/dnd/DropHandler;->painter:Lcom/sun/jna/platform/dnd/DropTargetPainter;

    .line 144
    new-instance p3, Ljava/awt/dnd/DropTarget;

    iget-boolean p4, p0, Lcom/sun/jna/platform/dnd/DropHandler;->active:Z

    invoke-direct {p3, p1, p2, p0, p4}, Ljava/awt/dnd/DropTarget;-><init>(Ljava/awt/Component;ILjava/awt/dnd/DropTargetListener;Z)V

    iput-object p3, p0, Lcom/sun/jna/platform/dnd/DropHandler;->dropTarget:Ljava/awt/dnd/DropTarget;

    return-void
.end method

.method private describe(Ljava/lang/String;Ljava/awt/dnd/DropTargetEvent;)V
    .locals 5

    .line 282
    sget-object v0, Lcom/sun/jna/platform/dnd/DropHandler;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    instance-of p1, p2, Ljava/awt/dnd/DropTargetDragEvent;

    const-string v2, " act="

    const-string v3, " tgt="

    const-string v4, ": src="

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p2}, Ljava/awt/dnd/DropTargetEvent;->getDropTargetContext()Ljava/awt/dnd/DropTargetContext;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetContext;->getDropTarget()Ljava/awt/dnd/DropTarget;

    move-result-object p1

    .line 289
    check-cast p2, Ljava/awt/dnd/DropTargetDragEvent;

    .line 290
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p2}, Ljava/awt/dnd/DropTargetDragEvent;->getSourceActions()I

    move-result v4

    invoke-static {v4}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p1}, Ljava/awt/dnd/DropTarget;->getDefaultActions()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p2}, Ljava/awt/dnd/DropTargetDragEvent;->getDropAction()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 297
    :cond_0
    instance-of p1, p2, Ljava/awt/dnd/DropTargetDropEvent;

    if-eqz p1, :cond_1

    .line 298
    invoke-virtual {p2}, Ljava/awt/dnd/DropTargetEvent;->getDropTargetContext()Ljava/awt/dnd/DropTargetContext;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetContext;->getDropTarget()Ljava/awt/dnd/DropTarget;

    move-result-object p1

    .line 300
    check-cast p2, Ljava/awt/dnd/DropTargetDropEvent;

    .line 301
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p2}, Ljava/awt/dnd/DropTargetDropEvent;->getSourceActions()I

    move-result v4

    invoke-static {v4}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p1}, Ljava/awt/dnd/DropTarget;->getDefaultActions()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p2}, Ljava/awt/dnd/DropTargetDropEvent;->getDropAction()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    iget-object p2, p0, Lcom/sun/jna/platform/dnd/DropHandler;->lastAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 310
    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 311
    iput-object p1, p0, Lcom/sun/jna/platform/dnd/DropHandler;->lastAction:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method protected acceptOrReject(Ljava/awt/dnd/DropTargetDragEvent;)I
    .locals 1

    .line 322
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->getDropAction(Ljava/awt/dnd/DropTargetEvent;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p1, v0}, Ljava/awt/dnd/DropTargetDragEvent;->acceptDrag(I)V

    return v0

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDragEvent;->rejectDrag()V

    return v0
.end method

.method protected canDrop(Ljava/awt/dnd/DropTargetEvent;ILjava/awt/Point;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public dragEnter(Ljava/awt/dnd/DropTargetDragEvent;)V
    .locals 2

    .line 336
    const-string v0, "enter(tgt)"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DropTargetEvent;)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->acceptOrReject(Ljava/awt/dnd/DropTargetDragEvent;)I

    move-result v0

    .line 338
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDragEvent;->getLocation()Ljava/awt/Point;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/jna/platform/dnd/DropHandler;->paintDropTarget(Ljava/awt/dnd/DropTargetEvent;ILjava/awt/Point;)V

    return-void
.end method

.method public dragExit(Ljava/awt/dnd/DropTargetEvent;)V
    .locals 2

    .line 350
    const-string v0, "exit(tgt)"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DropTargetEvent;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/jna/platform/dnd/DropHandler;->paintDropTarget(Ljava/awt/dnd/DropTargetEvent;ILjava/awt/Point;)V

    return-void
.end method

.method public dragOver(Ljava/awt/dnd/DropTargetDragEvent;)V
    .locals 2

    .line 343
    const-string v0, "over(tgt)"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DropTargetEvent;)V

    .line 344
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->acceptOrReject(Ljava/awt/dnd/DropTargetDragEvent;)I

    move-result v0

    .line 345
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDragEvent;->getLocation()Ljava/awt/Point;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/jna/platform/dnd/DropHandler;->paintDropTarget(Ljava/awt/dnd/DropTargetEvent;ILjava/awt/Point;)V

    return-void
.end method

.method public drop(Ljava/awt/dnd/DropTargetDropEvent;)V
    .locals 2

    .line 367
    const-string v0, "drop(tgt)"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DropTargetEvent;)V

    .line 368
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->getDropAction(Ljava/awt/dnd/DropTargetEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p1, v0}, Ljava/awt/dnd/DropTargetDropEvent;->acceptDrop(I)V

    .line 372
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/dnd/DropHandler;->drop(Ljava/awt/dnd/DropTargetDropEvent;I)V

    const/4 v0, 0x1

    .line 374
    invoke-virtual {p1, v0}, Ljava/awt/dnd/DropTargetDropEvent;->dropComplete(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    invoke-virtual {p1, v1}, Ljava/awt/dnd/DropTargetDropEvent;->dropComplete(Z)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDropEvent;->rejectDrop()V

    .line 381
    :goto_0
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDropEvent;->getLocation()Ljava/awt/Point;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/jna/platform/dnd/DropHandler;->paintDropTarget(Ljava/awt/dnd/DropTargetEvent;ILjava/awt/Point;)V

    return-void
.end method

.method protected abstract drop(Ljava/awt/dnd/DropTargetDropEvent;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public dropActionChanged(Ljava/awt/dnd/DropTargetDragEvent;)V
    .locals 2

    .line 356
    const-string v0, "change(tgt)"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DropTargetEvent;)V

    .line 357
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DropHandler;->acceptOrReject(Ljava/awt/dnd/DropTargetDragEvent;)I

    move-result v0

    .line 358
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDragEvent;->getLocation()Ljava/awt/Point;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/jna/platform/dnd/DropHandler;->paintDropTarget(Ljava/awt/dnd/DropTargetEvent;ILjava/awt/Point;)V

    return-void
.end method

.method protected getDropAction(Ljava/awt/dnd/DropTargetEvent;)I
    .locals 7

    const/4 v0, 0x0

    .line 199
    new-array v1, v0, [Ljava/awt/datatransfer/DataFlavor;

    .line 200
    instance-of v2, p1, Ljava/awt/dnd/DropTargetDragEvent;

    if-eqz v2, :cond_0

    .line 201
    move-object v1, p1

    check-cast v1, Ljava/awt/dnd/DropTargetDragEvent;

    .line 202
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetDragEvent;->getDropAction()I

    move-result v2

    .line 203
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetDragEvent;->getSourceActions()I

    move-result v3

    .line 204
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetDragEvent;->getCurrentDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v4

    .line 205
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetDragEvent;->getLocation()Ljava/awt/Point;

    move-result-object v1

    :goto_0
    move v6, v2

    move-object v2, v1

    move-object v1, v4

    move v4, v3

    move v3, v6

    goto :goto_1

    .line 207
    :cond_0
    instance-of v2, p1, Ljava/awt/dnd/DropTargetDropEvent;

    if-eqz v2, :cond_1

    .line 208
    move-object v1, p1

    check-cast v1, Ljava/awt/dnd/DropTargetDropEvent;

    .line 209
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetDropEvent;->getDropAction()I

    move-result v2

    .line 210
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetDropEvent;->getSourceActions()I

    move-result v3

    .line 211
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetDropEvent;->getCurrentDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v4

    .line 212
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetDropEvent;->getLocation()Ljava/awt/Point;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v3, v0

    move v4, v3

    .line 214
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sun/jna/platform/dnd/DropHandler;->isSupported([Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    invoke-virtual {p0, v1}, Lcom/sun/jna/platform/dnd/DropHandler;->getDropActionsForFlavors([Ljava/awt/datatransfer/DataFlavor;)I

    move-result v1

    .line 216
    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/sun/jna/platform/dnd/DropHandler;->getDropAction(Ljava/awt/dnd/DropTargetEvent;III)I

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {p0, p1, v1, v2}, Lcom/sun/jna/platform/dnd/DropHandler;->canDrop(Ljava/awt/dnd/DropTargetEvent;ILjava/awt/Point;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method protected getDropAction(Ljava/awt/dnd/DropTargetEvent;III)I
    .locals 1

    .line 244
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/dnd/DropHandler;->modifiersActive(I)Z

    move-result p1

    and-int v0, p2, p4

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    and-int p1, p4, p3

    return p1

    :cond_0
    if-eqz p1, :cond_1

    and-int p1, v0, p3

    if-eq p1, p2, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method protected getDropActionsForFlavors([Ljava/awt/datatransfer/DataFlavor;)I
    .locals 0

    .line 177
    iget p1, p0, Lcom/sun/jna/platform/dnd/DropHandler;->acceptedActions:I

    return p1
.end method

.method protected getDropTarget()Ljava/awt/dnd/DropTarget;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DropHandler;->dropTarget:Ljava/awt/dnd/DropTarget;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/sun/jna/platform/dnd/DropHandler;->active:Z

    return v0
.end method

.method protected isSupported([Ljava/awt/datatransfer/DataFlavor;)Z
    .locals 1

    .line 391
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 392
    iget-object p1, p0, Lcom/sun/jna/platform/dnd/DropHandler;->acceptedFlavors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 393
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected modifiersActive(I)Z
    .locals 4

    .line 267
    invoke-static {}, Lcom/sun/jna/platform/dnd/DragHandler;->getModifiers()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method protected paintDropTarget(Ljava/awt/dnd/DropTargetEvent;ILjava/awt/Point;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DropHandler;->painter:Lcom/sun/jna/platform/dnd/DropTargetPainter;

    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0, p1, p2, p3}, Lcom/sun/jna/platform/dnd/DropTargetPainter;->paintDropTarget(Ljava/awt/dnd/DropTargetEvent;ILjava/awt/Point;)V

    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1

    .line 161
    iput-boolean p1, p0, Lcom/sun/jna/platform/dnd/DropHandler;->active:Z

    .line 162
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DropHandler;->dropTarget:Ljava/awt/dnd/DropTarget;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Ljava/awt/dnd/DropTarget;->setActive(Z)V

    :cond_0
    return-void
.end method
