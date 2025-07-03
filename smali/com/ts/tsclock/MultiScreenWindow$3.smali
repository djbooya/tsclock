.class Lcom/ts/tsclock/MultiScreenWindow$3;
.super Ljava/lang/Object;
.source "MultiScreenWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/MultiScreenWindow;->doAnimation(Landroid/view/animation/Animation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/MultiScreenWindow;

.field private final synthetic val$animationType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/MultiScreenWindow;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iput-object p2, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->val$animationType:Ljava/lang/String;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, -0x1

    .line 252
    const-string v0, "MultiScreenWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->val$animationType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " end;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v0}, Lcom/ts/tsclock/MultiScreenWindow;->access$1(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->mIvMultiScreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 256
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iput v3, v0, Lcom/ts/tsclock/MultiScreenWindow;->startX:I

    .line 257
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iput v3, v0, Lcom/ts/tsclock/MultiScreenWindow;->startY:I

    .line 258
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ts/tsclock/MultiScreenWindow;->isAnimation:Z

    .line 259
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 265
    const-string v0, "MultiScreenWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->val$animationType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " repeat;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 247
    const-string v0, "MultiScreenWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/tsclock/MultiScreenWindow$3;->val$animationType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " start;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method
