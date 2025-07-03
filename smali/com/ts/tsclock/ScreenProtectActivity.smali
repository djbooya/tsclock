.class public Lcom/ts/tsclock/ScreenProtectActivity;
.super Landroid/app/Activity;
.source "ScreenProtectActivity.java"


# static fields
.field private static final ACTION_ENTER:Ljava/lang/String; = "com.ts.action.ACTION_ENTER"

.field private static final ACTION_EXIT:Ljava/lang/String; = "com.ts.action.ACTION_EXIT"

.field private static final TAG:Ljava/lang/String; = "ScreenProtectActivity"


# instance fields
.field isAnimation:Z

.field mIvShow:Landroid/widget/ImageView;

.field mOldX:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mRvLayout:Landroid/widget/RelativeLayout;

.field private path:Lcom/ts/tsclock/AnimatorPath/AnimatorPath;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Lcom/ts/tsclock/ScreenProtectActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/ScreenProtectActivity$1;-><init>(Lcom/ts/tsclock/ScreenProtectActivity;)V

    iput-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput v1, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mOldX:I

    .line 107
    iput-boolean v1, p0, Lcom/ts/tsclock/ScreenProtectActivity;->isAnimation:Z

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/ts/tsclock/ScreenProtectActivity;)Lcom/ts/tsclock/AnimatorPath/AnimatorPath;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->path:Lcom/ts/tsclock/AnimatorPath/AnimatorPath;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/tsclock/ScreenProtectActivity;Landroid/view/View;Ljava/lang/String;Lcom/ts/tsclock/AnimatorPath/AnimatorPath;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/ts/tsclock/ScreenProtectActivity;->startAnimatorPath(Landroid/view/View;Ljava/lang/String;Lcom/ts/tsclock/AnimatorPath/AnimatorPath;)V

    return-void
.end method

.method private startAnimatorPath(Landroid/view/View;Ljava/lang/String;Lcom/ts/tsclock/AnimatorPath/AnimatorPath;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "path"    # Lcom/ts/tsclock/AnimatorPath/AnimatorPath;

    .prologue
    .line 120
    const-string v1, "ScreenProtectActivity"

    const-string v2, "startAnimatorPath"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ts/tsclock/ScreenProtectActivity;->isAnimation:Z

    .line 122
    new-instance v1, Lcom/ts/tsclock/AnimatorPath/PathEvaluator;

    invoke-direct {v1}, Lcom/ts/tsclock/AnimatorPath/PathEvaluator;-><init>()V

    .line 123
    invoke-virtual {p3}, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->getPoints()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 122
    invoke-static {p0, p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 124
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    new-instance v1, Lcom/ts/tsclock/ScreenProtectActivity$3;

    invoke-direct {v1, p0}, Lcom/ts/tsclock/ScreenProtectActivity$3;-><init>(Lcom/ts/tsclock/ScreenProtectActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    new-instance v1, Lcom/ts/tsclock/ScreenProtectActivity$4;

    invoke-direct {v1, p0}, Lcom/ts/tsclock/ScreenProtectActivity$4;-><init>(Lcom/ts/tsclock/ScreenProtectActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 174
    return-void
.end method


# virtual methods
.method initData()V
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/ts/tsclock/ScreenProtectActivity;->setPath()V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ts.action.ACTION_EXIT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ts/tsclock/ScreenProtectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mIvShow:Landroid/widget/ImageView;

    const-string v2, "fab"

    iget-object v3, p0, Lcom/ts/tsclock/ScreenProtectActivity;->path:Lcom/ts/tsclock/AnimatorPath/AnimatorPath;

    invoke-direct {p0, v1, v2, v3}, Lcom/ts/tsclock/ScreenProtectActivity;->startAnimatorPath(Landroid/view/View;Ljava/lang/String;Lcom/ts/tsclock/AnimatorPath/AnimatorPath;)V

    .line 82
    return-void
.end method

.method initView()V
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ScreenProtectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mRvLayout:Landroid/widget/RelativeLayout;

    .line 66
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mRvLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ts/tsclock/ScreenProtectActivity$2;

    invoke-direct {v1, p0}, Lcom/ts/tsclock/ScreenProtectActivity$2;-><init>(Lcom/ts/tsclock/ScreenProtectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ScreenProtectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mIvShow:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mIvShow:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ScreenProtectActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/ts/tsclock/ScreenProtectActivity;->initView()V

    .line 37
    invoke-virtual {p0}, Lcom/ts/tsclock/ScreenProtectActivity;->initData()V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 43
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ScreenProtectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    return-void
.end method

.method sendEnter()V
    .locals 3

    .prologue
    .line 59
    const-string v1, "ScreenProtectActivity"

    const-string v2, "sendEnter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ts.action.ACTION_ENTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ScreenProtectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public setFab(Lcom/ts/tsclock/AnimatorPath/PathPoint;)V
    .locals 2
    .param p1, "newLoc"    # Lcom/ts/tsclock/AnimatorPath/PathPoint;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mIvShow:Landroid/widget/ImageView;

    iget v1, p1, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 103
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->mIvShow:Landroid/widget/ImageView;

    iget v1, p1, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 104
    return-void
.end method

.method public setPath()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;

    invoke-direct {v0}, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->path:Lcom/ts/tsclock/AnimatorPath/AnimatorPath;

    .line 87
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->path:Lcom/ts/tsclock/AnimatorPath/AnimatorPath;

    invoke-virtual {v0, v2, v2}, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->moveTo(FF)V

    .line 88
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->path:Lcom/ts/tsclock/AnimatorPath/AnimatorPath;

    const/high16 v1, 0x44f00000    # 1920.0f

    invoke-virtual {v0, v1, v2}, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->lineTo(FF)V

    .line 89
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity;->path:Lcom/ts/tsclock/AnimatorPath/AnimatorPath;

    invoke-virtual {v0, v2, v2}, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->lineTo(FF)V

    .line 94
    return-void
.end method
