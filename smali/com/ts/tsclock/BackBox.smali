.class public Lcom/ts/tsclock/BackBox;
.super Ljava/lang/Object;
.source "BackBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/tsclock/BackBox$OnClickBackHome;
    }
.end annotation


# static fields
.field public static final MULTI_SCREEN_EXIT:Ljava/lang/String; = "com.ts.multiscreen.exit"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/ts/tsclock/BackBox;


# instance fields
.field endRawX:I

.field endRawY:I

.field public isClick:Z

.field mBtnReturn:Landroid/widget/Button;

.field public mIsAppList:Z

.field public mOnClickBackHome:Lcom/ts/tsclock/BackBox$OnClickBackHome;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mView:Landroid/widget/RelativeLayout;

.field startRawX:I

.field startRawY:I

.field startX:I

.field startY:I

.field protected wManager:Landroid/view/WindowManager;

.field wmParams:Landroid/view/WindowManager$LayoutParams;

.field x:I

.field y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/tsclock/BackBox;->mInstance:Lcom/ts/tsclock/BackBox;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/tsclock/BackBox;->isClick:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/tsclock/BackBox;->mIsAppList:Z

    .line 110
    iput v1, p0, Lcom/ts/tsclock/BackBox;->endRawX:I

    .line 111
    iput v1, p0, Lcom/ts/tsclock/BackBox;->endRawY:I

    .line 113
    new-instance v0, Lcom/ts/tsclock/BackBox$1;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/BackBox$1;-><init>(Lcom/ts/tsclock/BackBox;)V

    iput-object v0, p0, Lcom/ts/tsclock/BackBox;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/ts/tsclock/BackBox;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static getInstance()Lcom/ts/tsclock/BackBox;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/ts/tsclock/BackBox;->mInstance:Lcom/ts/tsclock/BackBox;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/ts/tsclock/BackBox;

    invoke-direct {v0}, Lcom/ts/tsclock/BackBox;-><init>()V

    sput-object v0, Lcom/ts/tsclock/BackBox;->mInstance:Lcom/ts/tsclock/BackBox;

    .line 40
    :cond_0
    sget-object v0, Lcom/ts/tsclock/BackBox;->mInstance:Lcom/ts/tsclock/BackBox;

    return-object v0
.end method

.method private sendMultiScreenExitBroadcast()V
    .locals 3

    .prologue
    .line 98
    const-string v1, "haha"

    const-string v2, "sendMultiScreenExitBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.ts.multiscreen.exit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    sget-object v1, Lcom/ts/tsclock/BackBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void
.end method


# virtual methods
.method public InitWinManager(Landroid/content/Context;Landroid/widget/RelativeLayout;IIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/widget/RelativeLayout;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 85
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 86
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 87
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 88
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 90
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 91
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 92
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/tsclock/BackBox;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    :cond_0
    return-void
.end method

.method public initWindow(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x4e

    const/16 v3, 0xa

    .line 46
    sget-object v0, Lcom/ts/tsclock/BackBox;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 47
    sput-object p1, Lcom/ts/tsclock/BackBox;->mContext:Landroid/content/Context;

    .line 48
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ts/tsclock/BackBox;->wManager:Landroid/view/WindowManager;

    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 50
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/tsclock/BackBox;->mBtnReturn:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 61
    .local v9, "width":I
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->wManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 63
    .local v7, "height":I
    iget-object v2, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/ts/tsclock/BackBox;->InitWinManager(Landroid/content/Context;Landroid/widget/RelativeLayout;IIII)V

    .line 64
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->mBtnReturn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ts/tsclock/BackBox;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    .end local v7    # "height":I
    .end local v8    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v9    # "width":I
    :cond_0
    return-void
.end method

.method public setAppList(Z)V
    .locals 0
    .param p1, "appList"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/ts/tsclock/BackBox;->mIsAppList:Z

    .line 182
    return-void
.end method

.method public setOnClickBackHome(Lcom/ts/tsclock/BackBox$OnClickBackHome;)V
    .locals 0
    .param p1, "onClickBackHome"    # Lcom/ts/tsclock/BackBox$OnClickBackHome;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/ts/tsclock/BackBox;->mOnClickBackHome:Lcom/ts/tsclock/BackBox$OnClickBackHome;

    .line 186
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 168
    iget-object v0, p0, Lcom/ts/tsclock/BackBox;->mView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    :cond_0
    return-void
.end method
