.class public Lcom/ts/tsclock/DisableNotitleView;
.super Ljava/lang/Object;
.source "DisableNotitleView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutParam:Landroid/view/WindowManager$LayoutParams;

.field private relative:Landroid/widget/LinearLayout;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ts/tsclock/DisableNotitleView;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "resourceId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public createView()V
    .locals 6

    .prologue
    .line 26
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->wm:Landroid/view/WindowManager;

    .line 28
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->wm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 29
    .local v1, "mScreenWidth":I
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 30
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 31
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 32
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1030004

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 33
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x50128

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 37
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 38
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 39
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x258

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030007

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->relative:Landroid/widget/LinearLayout;

    .line 43
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    .line 44
    iget-object v4, p0, Lcom/ts/tsclock/DisableNotitleView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/ts/tsclock/DisableNotitleView;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    .line 43
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->relative:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->relative:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/ts/tsclock/DisableNotitleView$1;

    invoke-direct {v4, p0}, Lcom/ts/tsclock/DisableNotitleView$1;-><init>(Lcom/ts/tsclock/DisableNotitleView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    iget-object v3, p0, Lcom/ts/tsclock/DisableNotitleView;->wm:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/ts/tsclock/DisableNotitleView;->relative:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/ts/tsclock/DisableNotitleView;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method public removeView()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ts/tsclock/DisableNotitleView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/tsclock/DisableNotitleView;->relative:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 64
    return-void
.end method
