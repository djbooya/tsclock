.class public Lcom/ts/tsclock/FloatWindow;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/tsclock/FloatWindow$OnClickBackHome;
    }
.end annotation


# static fields
.field public static final BROADCAST_LANCHER_FUNC_MUTE:Ljava/lang/String; = "forfan.intent.action.MUTE"

.field public static final BROADCAST_LANCHER_FUNC_SCREENOFF:Ljava/lang/String; = "forfan.intent.action.SCREENOFF"

.field public static final BROADCAST_LANCHER_FUNC_VOLUMEADD:Ljava/lang/String; = "forfan.intent.action.VOLUMEUP"

.field public static final BROADCAST_LANCHER_FUNC_VOLUMEDEC:Ljava/lang/String; = "forfan.intent.action.VOLUMEDN"

.field public static final MULTI_SCREEN_EXIT:Ljava/lang/String; = "com.ts.multiscreen.exit"

.field private static final TAG:Ljava/lang/String; = "FloatWindow"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/ts/tsclock/FloatWindow;


# instance fields
.field endRawX:I

.field endRawY:I

.field public isClick:Z

.field mBtnHome:Landroid/widget/Button;

.field mBtnMute:Landroid/widget/Button;

.field mBtnReturn:Landroid/widget/Button;

.field mBtnScreenOff:Landroid/widget/Button;

.field mBtnVolumeDn:Landroid/widget/Button;

.field mBtnVolumeUp:Landroid/widget/Button;

.field public mIsAppList:Z

.field public mOnClickBackHome:Lcom/ts/tsclock/FloatWindow$OnClickBackHome;

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
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/tsclock/FloatWindow;->mInstance:Lcom/ts/tsclock/FloatWindow;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/tsclock/FloatWindow;->isClick:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/tsclock/FloatWindow;->mIsAppList:Z

    .line 141
    iput v1, p0, Lcom/ts/tsclock/FloatWindow;->endRawX:I

    .line 142
    iput v1, p0, Lcom/ts/tsclock/FloatWindow;->endRawY:I

    .line 144
    new-instance v0, Lcom/ts/tsclock/FloatWindow$1;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/FloatWindow$1;-><init>(Lcom/ts/tsclock/FloatWindow;)V

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/ts/tsclock/FloatWindow;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/tsclock/FloatWindow;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/ts/tsclock/FloatWindow;->sendMultiScreenExitBroadcast()V

    return-void
.end method

.method public static getInstance()Lcom/ts/tsclock/FloatWindow;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/ts/tsclock/FloatWindow;->mInstance:Lcom/ts/tsclock/FloatWindow;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/ts/tsclock/FloatWindow;

    invoke-direct {v0}, Lcom/ts/tsclock/FloatWindow;-><init>()V

    sput-object v0, Lcom/ts/tsclock/FloatWindow;->mInstance:Lcom/ts/tsclock/FloatWindow;

    .line 52
    :cond_0
    sget-object v0, Lcom/ts/tsclock/FloatWindow;->mInstance:Lcom/ts/tsclock/FloatWindow;

    return-object v0
.end method

.method private sendMainUIBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v1, "FloatWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMainUIBroadcast action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    sget-object v1, Lcom/ts/tsclock/FloatWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method private sendMultiScreenExitBroadcast()V
    .locals 3

    .prologue
    .line 129
    const-string v1, "haha"

    const-string v2, "sendMultiScreenExitBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.ts.multiscreen.exit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    sget-object v1, Lcom/ts/tsclock/FloatWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
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
    .line 116
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 117
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 118
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 119
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 120
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 121
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 122
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 123
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 124
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public initWindow(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 58
    sget-object v0, Lcom/ts/tsclock/FloatWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 59
    sput-object p1, Lcom/ts/tsclock/FloatWindow;->mContext:Landroid/content/Context;

    .line 60
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wManager:Landroid/view/WindowManager;

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 62
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    .line 63
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnHome:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnReturn:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnMute:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnVolumeUp:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnVolumeDn:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnScreenOff:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnHome:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnReturn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnMute:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnVolumeUp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnVolumeDn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mBtnScreenOff:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 84
    .local v9, "width":I
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->wManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 86
    .local v7, "height":I
    iget-object v2, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const/16 v5, 0x780

    const/16 v6, 0x2d0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/ts/tsclock/FloatWindow;->InitWinManager(Landroid/content/Context;Landroid/widget/RelativeLayout;IIII)V

    .line 87
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ts/tsclock/FloatWindow$2;

    invoke-direct {v1, p0}, Lcom/ts/tsclock/FloatWindow$2;-><init>(Lcom/ts/tsclock/FloatWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .end local v7    # "height":I
    .end local v8    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v9    # "width":I
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 218
    .local v0, "id":I
    const v1, 0x7f080009

    if-ne v0, v1, :cond_2

    .line 219
    iget-boolean v1, p0, Lcom/ts/tsclock/FloatWindow;->mIsAppList:Z

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow;->mOnClickBackHome:Lcom/ts/tsclock/FloatWindow$OnClickBackHome;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/ts/tsclock/FloatWindow;->mOnClickBackHome:Lcom/ts/tsclock/FloatWindow$OnClickBackHome;

    invoke-interface {v1}, Lcom/ts/tsclock/FloatWindow$OnClickBackHome;->onBackHome()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/ts/tsclock/FloatWindow;->sendMultiScreenExitBroadcast()V

    goto :goto_0

    .line 226
    :cond_2
    const v1, 0x7f08000a

    if-ne v0, v1, :cond_3

    .line 227
    const-string v1, "forfan.intent.action.MUTE"

    invoke-direct {p0, v1}, Lcom/ts/tsclock/FloatWindow;->sendMainUIBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_3
    const v1, 0x7f08000b

    if-ne v0, v1, :cond_4

    .line 229
    const-string v1, "forfan.intent.action.VOLUMEUP"

    invoke-direct {p0, v1}, Lcom/ts/tsclock/FloatWindow;->sendMainUIBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_4
    const v1, 0x7f08000c

    if-ne v0, v1, :cond_5

    .line 231
    const-string v1, "forfan.intent.action.VOLUMEDN"

    invoke-direct {p0, v1}, Lcom/ts/tsclock/FloatWindow;->sendMainUIBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_5
    const v1, 0x7f08000d

    if-ne v0, v1, :cond_6

    .line 233
    const-string v1, "forfan.intent.action.SCREENOFF"

    invoke-direct {p0, v1}, Lcom/ts/tsclock/FloatWindow;->sendMainUIBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_6
    const v1, 0x7f08001d

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/ts/tsclock/FloatWindow;->sendBack()V

    goto :goto_0
.end method

.method public sendBack()V
    .locals 3

    .prologue
    .line 248
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 249
    .local v1, "runtime":Ljava/lang/Runtime;
    const-string v2, "input keyevent 4"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "runtime":Ljava/lang/Runtime;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppList(Z)V
    .locals 0
    .param p1, "appList"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/ts/tsclock/FloatWindow;->mIsAppList:Z

    .line 209
    return-void
.end method

.method public setOnClickBackHome(Lcom/ts/tsclock/FloatWindow$OnClickBackHome;)V
    .locals 0
    .param p1, "onClickBackHome"    # Lcom/ts/tsclock/FloatWindow$OnClickBackHome;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/ts/tsclock/FloatWindow;->mOnClickBackHome:Lcom/ts/tsclock/FloatWindow$OnClickBackHome;

    .line 213
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 197
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow;->mView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    :cond_0
    return-void
.end method
