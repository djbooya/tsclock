.class Lcom/ts/tsclock/FloatWindow$1;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/FloatWindow;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/FloatWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    .line 144
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

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 149
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

    .line 150
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/FloatWindow;->x:I

    .line 151
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/FloatWindow;->y:I

    .line 152
    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    return v4

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ts/tsclock/FloatWindow;->isClick:Z

    .line 156
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/FloatWindow;->startX:I

    .line 157
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/FloatWindow;->startY:I

    .line 158
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/FloatWindow;->startRawX:I

    .line 159
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/ts/tsclock/FloatWindow;->startRawY:I

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget v1, v1, Lcom/ts/tsclock/FloatWindow;->x:I

    iget-object v2, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget v2, v2, Lcom/ts/tsclock/FloatWindow;->startRawX:I

    sub-int/2addr v1, v2

    if-gt v1, v5, :cond_0

    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget v1, v1, Lcom/ts/tsclock/FloatWindow;->y:I

    iget-object v2, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget v2, v2, Lcom/ts/tsclock/FloatWindow;->startRawY:I

    sub-int/2addr v1, v2

    if-le v1, v5, :cond_1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iput-boolean v4, v1, Lcom/ts/tsclock/FloatWindow;->isClick:Z

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget-object v1, v1, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget v2, v2, Lcom/ts/tsclock/FloatWindow;->x:I

    iget-object v3, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget v3, v3, Lcom/ts/tsclock/FloatWindow;->startX:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 166
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget-object v1, v1, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget v2, v2, Lcom/ts/tsclock/FloatWindow;->y:I

    iget-object v3, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget v3, v3, Lcom/ts/tsclock/FloatWindow;->startY:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 167
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget-object v1, v1, Lcom/ts/tsclock/FloatWindow;->wManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    invoke-static {v2}, Lcom/ts/tsclock/FloatWindow;->access$0(Lcom/ts/tsclock/FloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget-object v3, v3, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget-boolean v1, v1, Lcom/ts/tsclock/FloatWindow;->isClick:Z

    if-eqz v1, :cond_2

    .line 172
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsAppList = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget-boolean v3, v3, Lcom/ts/tsclock/FloatWindow;->mIsAppList:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget-boolean v1, v1, Lcom/ts/tsclock/FloatWindow;->mIsAppList:Z

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget-object v1, v1, Lcom/ts/tsclock/FloatWindow;->mOnClickBackHome:Lcom/ts/tsclock/FloatWindow$OnClickBackHome;

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iget-object v1, v1, Lcom/ts/tsclock/FloatWindow;->mOnClickBackHome:Lcom/ts/tsclock/FloatWindow$OnClickBackHome;

    invoke-interface {v1}, Lcom/ts/tsclock/FloatWindow$OnClickBackHome;->onBackHome()V

    .line 181
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    iput-boolean v4, v1, Lcom/ts/tsclock/FloatWindow;->isClick:Z

    goto/16 :goto_0

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow$1;->this$0:Lcom/ts/tsclock/FloatWindow;

    invoke-static {v1}, Lcom/ts/tsclock/FloatWindow;->access$1(Lcom/ts/tsclock/FloatWindow;)V

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
