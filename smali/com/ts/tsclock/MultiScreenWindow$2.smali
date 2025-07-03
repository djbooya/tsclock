.class Lcom/ts/tsclock/MultiScreenWindow$2;
.super Ljava/lang/Object;
.source "MultiScreenWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/MultiScreenWindow;->initWindow(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/MultiScreenWindow;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/MultiScreenWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/MultiScreenWindow$2;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$2;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-boolean v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->isAnimation:Z

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "MultiScreenWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAnimation=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/tsclock/MultiScreenWindow$2;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-boolean v2, v2, Lcom/ts/tsclock/MultiScreenWindow;->isAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nErrorNum=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/tsclock/MultiScreenWindow$2;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget v2, v2, Lcom/ts/tsclock/MultiScreenWindow;->nErrorNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$2;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->nErrorNum:I

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$2;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget v1, v0, Lcom/ts/tsclock/MultiScreenWindow;->nErrorNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/ts/tsclock/MultiScreenWindow;->nErrorNum:I

    .line 139
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$2;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->nErrorNum:I

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$2;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ts/tsclock/MultiScreenWindow;->isAnimation:Z

    .line 145
    :cond_0
    return-void
.end method
