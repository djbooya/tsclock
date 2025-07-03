.class public Lcom/ts/tsclock/MultiScreenWindow;
.super Ljava/lang/Object;
.source "MultiScreenWindow.java"


# static fields
.field public static final MULTI_SCREEN_EXIT:Ljava/lang/String; = "com.ts.multiscreen.exit"

.field private static final TAG:Ljava/lang/String; = "MultiScreenWindow"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/ts/tsclock/MultiScreenWindow;


# instance fields
.field curX:I

.field curY:I

.field isAnimation:Z

.field isClick:Z

.field mBtnReturn:Landroid/widget/Button;

.field mHandler:Landroid/os/Handler;

.field mIvMultiScreen:Landroid/widget/ImageView;

.field private mPoint:[I

.field private mPointOld:[I

.field mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mView:Landroid/widget/RelativeLayout;

.field nErrorNum:I

.field nNawFingerNum:I

.field nNawX:I

.field nNawY:I

.field oldX:I

.field oldY:I

.field startX:I

.field startY:I

.field tickkenum:I

.field protected wManager:Landroid/view/WindowManager;

.field wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/tsclock/MultiScreenWindow;->mInstance:Lcom/ts/tsclock/MultiScreenWindow;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->isClick:Z

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    iput-boolean v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->isAnimation:Z

    .line 57
    iput v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->nErrorNum:I

    .line 58
    iput v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->nNawFingerNum:I

    .line 59
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mPoint:[I

    .line 60
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mPointOld:[I

    .line 61
    iput v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->nNawX:I

    .line 62
    iput v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->nNawY:I

    .line 64
    iput v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->tickkenum:I

    .line 68
    return-void
.end method

.method public static GetDispH()I
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public static GetDispW()I
    .locals 1

    .prologue
    .line 398
    const/16 v0, 0x780

    return v0
.end method

.method static synthetic access$0(Lcom/ts/tsclock/MultiScreenWindow;)[I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mPoint:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->screenshotSystem()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/ts/tsclock/MultiScreenWindow;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->getScaleAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/ts/tsclock/MultiScreenWindow;Landroid/view/animation/Animation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Lcom/ts/tsclock/MultiScreenWindow;->doAnimation(Landroid/view/animation/Animation;Ljava/lang/String;)V

    return-void
.end method

.method private doAnimation(Landroid/view/animation/Animation;Ljava/lang/String;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "animationType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 237
    iget-object v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->mIvMultiScreen:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 238
    .local v0, "oldAnimation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 241
    iget-object v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->mIvMultiScreen:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 244
    :cond_1
    new-instance v1, Lcom/ts/tsclock/MultiScreenWindow$3;

    invoke-direct {v1, p0, p2}, Lcom/ts/tsclock/MultiScreenWindow$3;-><init>(Lcom/ts/tsclock/MultiScreenWindow;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    iget-object v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->mIvMultiScreen:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 269
    return-void
.end method

.method private getAlphaAnimation()Landroid/view/animation/Animation;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 292
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 293
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 294
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 295
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 297
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 298
    return-object v0
.end method

.method private getAnimationSet(Z)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "fromXML"    # Z

    .prologue
    const/4 v4, 0x1

    .line 273
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 274
    .local v1, "innerAnimationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 275
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 276
    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->getScaleAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 277
    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->getTranslateAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 278
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 280
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 281
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 283
    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->getAlphaAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 284
    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->getRotateAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    return-object v1
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 176
    :try_start_0
    const-string v11, "android.view.SurfaceControl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 179
    .local v8, "surfaceControlClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "android.view.SurfaceControl$Screenshot"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 182
    .local v6, "screenshotClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "captureDisplay"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 183
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    .line 182
    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 186
    .local v1, "captureDisplayMethod":Ljava/lang/reflect/Method;
    sget-object v11, Lcom/ts/tsclock/MultiScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 187
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 188
    .local v9, "width":I
    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 191
    .local v3, "height":I
    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 193
    .local v7, "screenshotObject":Ljava/lang/Object;
    const-string v11, "bitmap"

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 194
    .local v0, "bitmapField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 195
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "bitmapField":Ljava/lang/reflect/Field;
    .end local v1    # "captureDisplayMethod":Ljava/lang/reflect/Method;
    .end local v3    # "height":I
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "screenshotClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "screenshotObject":Ljava/lang/Object;
    .end local v8    # "surfaceControlClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "width":I
    :goto_0
    return-object v5

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v10

    .line 200
    goto :goto_0
.end method

.method private getHeight()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mIvMultiScreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/ts/tsclock/MultiScreenWindow;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/ts/tsclock/MultiScreenWindow;->mInstance:Lcom/ts/tsclock/MultiScreenWindow;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/ts/tsclock/MultiScreenWindow;

    invoke-direct {v0}, Lcom/ts/tsclock/MultiScreenWindow;-><init>()V

    sput-object v0, Lcom/ts/tsclock/MultiScreenWindow;->mInstance:Lcom/ts/tsclock/MultiScreenWindow;

    .line 74
    :cond_0
    sget-object v0, Lcom/ts/tsclock/MultiScreenWindow;->mInstance:Lcom/ts/tsclock/MultiScreenWindow;

    return-object v0
.end method

.method private getRotateAnimation()Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 302
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 303
    .local v0, "rotateAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 304
    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 305
    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    .line 307
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 308
    return-object v0
.end method

.method private getScaleAnimation()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    .line 312
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ts/tsclock/MultiScreenWindow;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 313
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 314
    invoke-virtual {v0, v7}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 315
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 316
    invoke-virtual {v0, v7}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 322
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 335
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 336
    return-object v0
.end method

.method private getTranslateAnimation()Landroid/view/animation/Animation;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 340
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, -0x3cca0000    # -182.0f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 341
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 342
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 343
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 344
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 345
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 346
    return-object v0
.end method

.method private getWidth()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mIvMultiScreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    return v0
.end method

.method private screenshotSystem()Landroid/graphics/Bitmap;
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v12, "android.view.SurfaceControl"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 209
    .local v6, "mClassType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "screenshot"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/graphics/Rect;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 210
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    .line 209
    invoke-virtual {v6, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 211
    .local v7, "nativeScreenshotMethod":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 213
    sget-object v12, Lcom/ts/tsclock/MultiScreenWindow;->mContext:Landroid/content/Context;

    const-string v13, "display"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 214
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 215
    .local v3, "displays":[Landroid/view/Display;
    const/4 v12, 0x1

    aget-object v8, v3, v12

    .line 216
    .local v8, "secondaryDisplay":Landroid/view/Display;
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 217
    .local v10, "size":Landroid/graphics/Point;
    invoke-virtual {v8, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 218
    iget v11, v10, Landroid/graphics/Point;->x:I

    .line 219
    .local v11, "width":I
    iget v5, v10, Landroid/graphics/Point;->y:I

    .line 222
    .local v5, "height":I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13, v11, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 225
    .local v9, "secondaryScreenRect":Landroid/graphics/Rect;
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 226
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 225
    invoke-virtual {v7, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 227
    const-string v13, "MultiScreenWindow"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v12, "screenshotSystem sBitmap="

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 233
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "displays":[Landroid/view/Display;
    .end local v5    # "height":I
    .end local v6    # "mClassType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "nativeScreenshotMethod":Ljava/lang/reflect/Method;
    .end local v8    # "secondaryDisplay":Landroid/view/Display;
    .end local v9    # "secondaryScreenRect":Landroid/graphics/Rect;
    .end local v10    # "size":Landroid/graphics/Point;
    .end local v11    # "width":I
    :goto_1
    return-object v1

    .line 227
    .restart local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v3    # "displays":[Landroid/view/Display;
    .restart local v5    # "height":I
    .restart local v6    # "mClassType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "nativeScreenshotMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "secondaryDisplay":Landroid/view/Display;
    .restart local v9    # "secondaryScreenRect":Landroid/graphics/Rect;
    .restart local v10    # "size":Landroid/graphics/Point;
    .restart local v11    # "width":I
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 229
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "displays":[Landroid/view/Display;
    .end local v5    # "height":I
    .end local v6    # "mClassType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "nativeScreenshotMethod":Ljava/lang/reflect/Method;
    .end local v8    # "secondaryDisplay":Landroid/view/Display;
    .end local v9    # "secondaryScreenRect":Landroid/graphics/Rect;
    .end local v10    # "size":Landroid/graphics/Point;
    .end local v11    # "width":I
    :catch_0
    move-exception v4

    .line 230
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    const-string v12, "MultiScreenWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "screenshotSystem exception: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_1

    .line 229
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_2
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
    .line 161
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 162
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 163
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 164
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 165
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 167
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 168
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 169
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 170
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/tsclock/MultiScreenWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method

.method TopIsSupportMultiScreen()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 435
    :cond_0
    return-void
.end method

.method initView()V
    .locals 8

    .prologue
    .line 152
    sget-object v0, Lcom/ts/tsclock/MultiScreenWindow;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 153
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f03000a

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mView:Landroid/widget/RelativeLayout;

    .line 154
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mView:Landroid/widget/RelativeLayout;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mIvMultiScreen:Landroid/widget/ImageView;

    .line 156
    sget-object v1, Lcom/ts/tsclock/MultiScreenWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ts/tsclock/MultiScreenWindow;->mView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    const/16 v4, 0xb6

    const/16 v5, 0x208

    const/16 v6, 0x172

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ts/tsclock/MultiScreenWindow;->InitWinManager(Landroid/content/Context;Landroid/widget/RelativeLayout;IIII)V

    .line 157
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public initWindow(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 79
    sput-object p1, Lcom/ts/tsclock/MultiScreenWindow;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->wManager:Landroid/view/WindowManager;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->startY:I

    iput v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->startX:I

    iput v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->oldY:I

    iput v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->oldX:I

    iput v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->curY:I

    iput v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->curX:I

    .line 82
    new-instance v0, Lcom/ts/tsclock/MultiScreenWindow$1;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/MultiScreenWindow$1;-><init>(Lcom/ts/tsclock/MultiScreenWindow;)V

    iput-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mHandler:Landroid/os/Handler;

    .line 132
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/ts/tsclock/MultiScreenWindow$2;

    invoke-direct {v1, p0}, Lcom/ts/tsclock/MultiScreenWindow$2;-><init>(Lcom/ts/tsclock/MultiScreenWindow;)V

    .line 146
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 147
    invoke-virtual {p0}, Lcom/ts/tsclock/MultiScreenWindow;->initView()V

    .line 149
    :cond_0
    return-void
.end method

.method public sendMultiScreen()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 425
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v0, p0, Lcom/ts/tsclock/MultiScreenWindow;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 429
    :cond_0
    return-void
.end method
