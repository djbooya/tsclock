.class Lcom/ts/tsclock/MultiScreenWindow$1;
.super Landroid/os/Handler;
.source "MultiScreenWindow.java"


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
    iput-object p1, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/ts/tsclock/MultiScreenWindow;->GetDispW()I

    move-result v1

    iget-object v2, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v2}, Lcom/ts/tsclock/MultiScreenWindow;->access$0(Lcom/ts/tsclock/MultiScreenWindow;)[I

    move-result-object v2

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 89
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v1}, Lcom/ts/tsclock/MultiScreenWindow;->access$1(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v2, v2, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->mIvMultiScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v1}, Lcom/ts/tsclock/MultiScreenWindow;->access$2(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v0}, Lcom/ts/tsclock/MultiScreenWindow;->access$1(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 111
    :pswitch_2
    const-string v0, "MultiScreenWindow"

    const-string v1, "handleMessage: 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 114
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v1}, Lcom/ts/tsclock/MultiScreenWindow;->access$1(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v2, v2, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v0, v0, Lcom/ts/tsclock/MultiScreenWindow;->mIvMultiScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v1}, Lcom/ts/tsclock/MultiScreenWindow;->access$3(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v0}, Lcom/ts/tsclock/MultiScreenWindow;->access$1(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    const-string v0, "MultiScreenWindow"

    const-string v1, "run: view gone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iput-boolean v4, v0, Lcom/ts/tsclock/MultiScreenWindow;->isAnimation:Z

    .line 119
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    const/16 v1, 0x5a

    iput v1, v0, Lcom/ts/tsclock/MultiScreenWindow;->nErrorNum:I

    .line 120
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    iget-object v1, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v1}, Lcom/ts/tsclock/MultiScreenWindow;->access$4(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/view/animation/Animation;

    move-result-object v1

    const-string v2, "set"

    invoke-static {v0, v1, v2}, Lcom/ts/tsclock/MultiScreenWindow;->access$5(Lcom/ts/tsclock/MultiScreenWindow;Landroid/view/animation/Animation;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-static {v0}, Lcom/ts/tsclock/MultiScreenWindow;->access$1(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 126
    :pswitch_4
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow$1;->this$0:Lcom/ts/tsclock/MultiScreenWindow;

    invoke-virtual {v0}, Lcom/ts/tsclock/MultiScreenWindow;->sendMultiScreen()V

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
