.class Lcom/ts/tsclock/BackBox$1;
.super Ljava/lang/Object;
.source "BackBox.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/BackBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/BackBox;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/BackBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 118
    .local v0, "action":I
    const-string v1, "haha"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTouch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/BackBox;->x:I

    .line 120
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/BackBox;->y:I

    .line 121
    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return v4

    .line 123
    :pswitch_0
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ts/tsclock/BackBox;->isClick:Z

    .line 125
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/BackBox;->startX:I

    .line 126
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/BackBox;->startY:I

    .line 127
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/BackBox;->startRawX:I

    .line 128
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/BackBox;->startRawY:I

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget v1, v1, Lcom/ts/tsclock/BackBox;->x:I

    iget-object v2, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget v2, v2, Lcom/ts/tsclock/BackBox;->startRawX:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v5, :cond_0

    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget v1, v1, Lcom/ts/tsclock/BackBox;->y:I

    iget-object v2, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget v2, v2, Lcom/ts/tsclock/BackBox;->startRawY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v5, :cond_1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iput-boolean v4, v1, Lcom/ts/tsclock/BackBox;->isClick:Z

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget-object v1, v1, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget v2, v2, Lcom/ts/tsclock/BackBox;->x:I

    iget-object v3, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget v3, v3, Lcom/ts/tsclock/BackBox;->startX:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 135
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget-object v1, v1, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget v2, v2, Lcom/ts/tsclock/BackBox;->y:I

    iget-object v3, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget v3, v3, Lcom/ts/tsclock/BackBox;->startY:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 136
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget-object v1, v1, Lcom/ts/tsclock/BackBox;->wManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    invoke-static {v2}, Lcom/ts/tsclock/BackBox;->access$0(Lcom/ts/tsclock/BackBox;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget-object v3, v3, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget-boolean v1, v1, Lcom/ts/tsclock/BackBox;->isClick:Z

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsAppList = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iget-boolean v3, v3, Lcom/ts/tsclock/BackBox;->mIsAppList:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    invoke-virtual {v1}, Lcom/ts/tsclock/BackBox;->hide()V

    .line 143
    invoke-static {}, Lcom/ts/tsclock/FloatWindow;->getInstance()Lcom/ts/tsclock/FloatWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/tsclock/FloatWindow;->show()V

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/ts/tsclock/BackBox$1;->this$0:Lcom/ts/tsclock/BackBox;

    iput-boolean v4, v1, Lcom/ts/tsclock/BackBox;->isClick:Z

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
