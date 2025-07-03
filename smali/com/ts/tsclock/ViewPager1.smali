.class public Lcom/ts/tsclock/ViewPager1;
.super Landroid/widget/RelativeLayout;
.source "ViewPager1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SUPPORT_CHANGE_LOGO:Ljava/lang/String; = "persist.support.change.logo"

.field private static final TAG:Ljava/lang/String; = "Vp"


# instance fields
.field SPEED_START_DEGREE:I

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private dealTask:Ljava/lang/Runnable;

.field direction:F

.field editor:Landroid/content/SharedPreferences$Editor;

.field private img_compass_dial:Landroid/widget/ImageView;

.field private img_compass_pointer:Landroid/widget/ImageView;

.field private img_hour:Landroid/widget/ImageView;

.field private img_minute:Landroid/widget/ImageView;

.field private img_second:Landroid/widget/ImageView;

.field private img_speed_pointer:Landroid/widget/ImageView;

.field img_wallpaper:Landroid/widget/ImageView;

.field private isKmh:I

.field private iv_speed:[Landroid/widget/ImageView;

.field private mBmpCompass:Landroid/graphics/Bitmap;

.field private mBmpHour:Landroid/graphics/Bitmap;

.field private mBmpMinute:Landroid/graphics/Bitmap;

.field private mBmpSecond:Landroid/graphics/Bitmap;

.field private mBmpTemp:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field mDirectionAnimator:Lcom/ts/tsclock/CustomDirectionAnimator;

.field mIsSupportChangeLogo:I

.field private mIvLogo:Landroid/widget/ImageView;

.field mLastDirection:I

.field mLastSpeed:I

.field mSpeedAnimator:Lcom/ts/tsclock/CustomAnimator;

.field private m_CommService:Lcom/ts/main/common/ITsCommon;

.field private matrix:Landroid/graphics/Matrix;

.field sconn:Landroid/content/ServiceConnection;

.field share:Landroid/content/SharedPreferences;

.field private speedNums:[I

.field private tv_angle:Landroid/widget/TextView;

.field private tv_direction:Landroid/widget/TextView;

.field private tv_speed:Landroid/widget/TextView;

.field private tv_week:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 56
    iput-object v1, p0, Lcom/ts/tsclock/ViewPager1;->speedNums:[I

    .line 59
    iput v4, p0, Lcom/ts/tsclock/ViewPager1;->isKmh:I

    .line 76
    new-instance v1, Lcom/ts/tsclock/ViewPager1$1;

    invoke-direct {v1, p0}, Lcom/ts/tsclock/ViewPager1$1;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    iput-object v1, p0, Lcom/ts/tsclock/ViewPager1;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v1, Lcom/ts/tsclock/ViewPager1$2;

    invoke-direct {v1, p0}, Lcom/ts/tsclock/ViewPager1$2;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    iput-object v1, p0, Lcom/ts/tsclock/ViewPager1;->dealTask:Ljava/lang/Runnable;

    .line 268
    const/4 v1, 0x0

    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->direction:F

    .line 269
    iput v3, p0, Lcom/ts/tsclock/ViewPager1;->mLastDirection:I

    .line 323
    iput v3, p0, Lcom/ts/tsclock/ViewPager1;->mLastSpeed:I

    .line 324
    const/16 v1, -0x7e

    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->SPEED_START_DEGREE:I

    .line 418
    new-instance v1, Lcom/ts/tsclock/ViewPager1$3;

    invoke-direct {v1, p0}, Lcom/ts/tsclock/ViewPager1$3;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    iput-object v1, p0, Lcom/ts/tsclock/ViewPager1;->sconn:Landroid/content/ServiceConnection;

    .line 485
    iput v3, p0, Lcom/ts/tsclock/ViewPager1;->mIsSupportChangeLogo:I

    .line 64
    iput-object p1, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    .line 65
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    const-string v2, "speedunit"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/tsclock/ViewPager1;->share:Landroid/content/SharedPreferences;

    .line 66
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->share:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/tsclock/ViewPager1;->editor:Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->share:Landroid/content/SharedPreferences;

    const-string v2, "iskmh"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->isKmh:I

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/ts/tsclock/ViewPager1;->onFinishInflate()V

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "updateIntent":Landroid/content/IntentFilter;
    const-string v1, "Allapp_backto_workspace"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x7f020064
        0x7f020065
        0x7f020066
        0x7f020067
        0x7f020068
        0x7f020069
        0x7f02006a
        0x7f02006b
        0x7f02006c
        0x7f02006d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 56
    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->speedNums:[I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/tsclock/ViewPager1;->isKmh:I

    .line 76
    new-instance v0, Lcom/ts/tsclock/ViewPager1$1;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/ViewPager1$1;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v0, Lcom/ts/tsclock/ViewPager1$2;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/ViewPager1$2;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->dealTask:Ljava/lang/Runnable;

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/tsclock/ViewPager1;->direction:F

    .line 269
    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->mLastDirection:I

    .line 323
    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->mLastSpeed:I

    .line 324
    const/16 v0, -0x7e

    iput v0, p0, Lcom/ts/tsclock/ViewPager1;->SPEED_START_DEGREE:I

    .line 418
    new-instance v0, Lcom/ts/tsclock/ViewPager1$3;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/ViewPager1$3;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->sconn:Landroid/content/ServiceConnection;

    .line 485
    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->mIsSupportChangeLogo:I

    .line 89
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x7f020064
        0x7f020065
        0x7f020066
        0x7f020067
        0x7f020068
        0x7f020069
        0x7f02006a
        0x7f02006b
        0x7f02006c
        0x7f02006d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 56
    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->speedNums:[I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/tsclock/ViewPager1;->isKmh:I

    .line 76
    new-instance v0, Lcom/ts/tsclock/ViewPager1$1;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/ViewPager1$1;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v0, Lcom/ts/tsclock/ViewPager1$2;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/ViewPager1$2;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->dealTask:Ljava/lang/Runnable;

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/tsclock/ViewPager1;->direction:F

    .line 269
    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->mLastDirection:I

    .line 323
    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->mLastSpeed:I

    .line 324
    const/16 v0, -0x7e

    iput v0, p0, Lcom/ts/tsclock/ViewPager1;->SPEED_START_DEGREE:I

    .line 418
    new-instance v0, Lcom/ts/tsclock/ViewPager1$3;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/ViewPager1$3;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->sconn:Landroid/content/ServiceConnection;

    .line 485
    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->mIsSupportChangeLogo:I

    .line 94
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x7f020064
        0x7f020065
        0x7f020066
        0x7f020067
        0x7f020068
        0x7f020069
        0x7f02006a
        0x7f02006b
        0x7f02006c
        0x7f02006d
    .end array-data
.end method

.method static synthetic access$0(Lcom/ts/tsclock/ViewPager1;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->dealTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/tsclock/ViewPager1;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/ts/tsclock/ViewPager1;->updateClock()V

    return-void
.end method

.method static synthetic access$2(Lcom/ts/tsclock/ViewPager1;)Lcom/ts/main/common/ITsCommon;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->m_CommService:Lcom/ts/main/common/ITsCommon;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/tsclock/ViewPager1;)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/ts/tsclock/ViewPager1;->bindCommService()V

    return-void
.end method

.method static synthetic access$4(Lcom/ts/tsclock/ViewPager1;)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/ts/tsclock/ViewPager1;->updateDirection()V

    return-void
.end method

.method static synthetic access$5(Lcom/ts/tsclock/ViewPager1;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/ts/tsclock/ViewPager1;->updateSpeed()V

    return-void
.end method

.method static synthetic access$6(Lcom/ts/tsclock/ViewPager1;Lcom/ts/main/common/ITsCommon;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ts/tsclock/ViewPager1;->m_CommService:Lcom/ts/main/common/ITsCommon;

    return-void
.end method

.method private bindCommService()V
    .locals 4

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v1, "com.ts.MainUI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->sconn:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 416
    return-void
.end method

.method private getNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 405
    .local v7, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 406
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 405
    invoke-static {v7, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 408
    .local v8, "newBm":Landroid/graphics/Bitmap;
    return-object v8
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 128
    const-string v0, "Vp"

    const-string v1, "initUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->tv_direction:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->tv_angle:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->img_compass_pointer:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->img_compass_dial:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->img_hour:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->img_minute:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->img_second:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->tv_week:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->img_speed_pointer:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->img_speed_pointer:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->img_speed_pointer:Landroid/widget/ImageView;

    const/high16 v1, -0x3d040000    # -126.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 160
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->tv_speed:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->tv_speed:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    .line 163
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 164
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 165
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 166
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ViewPager1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ViewPager1;->mIvLogo:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->mIvLogo:Landroid/widget/ImageView;

    new-instance v1, Lcom/ts/tsclock/ViewPager1$4;

    invoke-direct {v1, p0}, Lcom/ts/tsclock/ViewPager1$4;-><init>(Lcom/ts/tsclock/ViewPager1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/ts/tsclock/ViewPager1;->updateLogo()V

    .line 185
    return-void
.end method

.method private updateClock()V
    .locals 17

    .prologue
    .line 225
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 226
    .local v13, "time":Landroid/text/format/Time;
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 227
    iget v4, v13, Landroid/text/format/Time;->hour:I

    .line 228
    .local v4, "h1":I
    iget v6, v13, Landroid/text/format/Time;->minute:I

    .line 229
    .local v6, "m1":I
    iget v11, v13, Landroid/text/format/Time;->second:I

    .line 230
    .local v11, "s1":I
    int-to-float v14, v4

    const/high16 v15, 0x41f00000    # 30.0f

    mul-float/2addr v14, v15

    int-to-float v15, v6

    const/high16 v16, 0x42700000    # 60.0f

    div-float v15, v15, v16

    const/high16 v16, 0x41f00000    # 30.0f

    mul-float v15, v15, v16

    add-float v5, v14, v15

    .line 231
    .local v5, "hourRotate":F
    int-to-float v14, v6

    const/high16 v15, 0x40c00000    # 6.0f

    mul-float v7, v14, v15

    .line 232
    .local v7, "minuteRotate":F
    int-to-float v14, v11

    const/high16 v15, 0x40c00000    # 6.0f

    mul-float v12, v14, v15

    .line 233
    .local v12, "secondRotate":F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 234
    .local v1, "a":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 235
    .local v2, "b":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    .local v3, "c":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 237
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 238
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpHour:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpHour:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 241
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ts/tsclock/ViewPager1;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f02007d

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpHour:Landroid/graphics/Bitmap;

    .line 243
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpHour:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ts/tsclock/ViewPager1;->mBmpHour:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v1, v5, v14, v15}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpHour:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/ts/tsclock/ViewPager1;->getNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 245
    .local v8, "newBmHour":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->img_hour:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpMinute:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpMinute:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 249
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/ts/tsclock/ViewPager1;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f02007a

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpMinute:Landroid/graphics/Bitmap;

    .line 251
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpMinute:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ts/tsclock/ViewPager1;->mBmpMinute:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v2, v7, v14, v15}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpMinute:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/ts/tsclock/ViewPager1;->getNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 253
    .local v9, "newBmMinute":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->img_minute:Landroid/widget/ImageView;

    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpSecond:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpSecond:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 257
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ts/tsclock/ViewPager1;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f02007b

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpSecond:Landroid/graphics/Bitmap;

    .line 259
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpSecond:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ts/tsclock/ViewPager1;->mBmpSecond:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v3, v12, v14, v15}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->mBmpSecond:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/ts/tsclock/ViewPager1;->getNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 261
    .local v10, "newBmSecond":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/tsclock/ViewPager1;->img_second:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    return-void
.end method

.method private updateDirection()V
    .locals 14

    .prologue
    const/high16 v13, 0x43b40000    # 360.0f

    const/4 v12, 0x0

    .line 274
    :try_start_0
    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v7}, Lcom/ts/main/common/ITsCommon;->GetCog()F

    move-result v7

    iput v7, p0, Lcom/ts/tsclock/ViewPager1;->direction:F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/ts/tsclock/ViewPager1;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "dirStrs":[Ljava/lang/String;
    iget v7, p0, Lcom/ts/tsclock/ViewPager1;->direction:F

    float-to-double v8, v7

    const-wide v10, 0x4036800000000000L    # 22.5

    add-double/2addr v8, v10

    const-wide v10, 0x4076800000000000L    # 360.0

    rem-double/2addr v8, v10

    const-wide v10, 0x4046800000000000L    # 45.0

    div-double/2addr v8, v10

    double-to-int v1, v8

    .line 281
    .local v1, "dir":I
    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    .line 282
    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->tv_angle:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/ts/tsclock/ViewPager1;->direction:F

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u00b0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->tv_direction:Landroid/widget/TextView;

    array-length v8, v2

    rem-int v8, v1, v8

    aget-object v8, v2, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    iget v7, p0, Lcom/ts/tsclock/ViewPager1;->direction:F

    sub-float v7, v13, v7

    rem-float/2addr v7, v13

    float-to-int v5, v7

    .line 301
    .local v5, "hourRoate":I
    iget v7, p0, Lcom/ts/tsclock/ViewPager1;->mLastDirection:I

    if-ne v7, v5, :cond_1

    .line 320
    :goto_1
    return-void

    .line 275
    .end local v1    # "dir":I
    .end local v2    # "dirStrs":[Ljava/lang/String;
    .end local v5    # "hourRoate":I
    :catch_0
    move-exception v3

    .line 277
    .local v3, "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 305
    .end local v3    # "e1":Landroid/os/RemoteException;
    .restart local v1    # "dir":I
    .restart local v2    # "dirStrs":[Ljava/lang/String;
    .restart local v5    # "hourRoate":I
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 306
    .local v0, "degree":F
    iget v7, p0, Lcom/ts/tsclock/ViewPager1;->mLastDirection:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float v6, v12, v7

    .line 307
    .local v6, "startRotation":F
    int-to-float v7, v5

    mul-float/2addr v7, v0

    add-float v4, v12, v7

    .line 309
    .local v4, "endRotation":F
    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->mDirectionAnimator:Lcom/ts/tsclock/CustomDirectionAnimator;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->mDirectionAnimator:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-virtual {v7}, Lcom/ts/tsclock/CustomDirectionAnimator;->isAnimatorRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 310
    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->mDirectionAnimator:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-virtual {v7}, Lcom/ts/tsclock/CustomDirectionAnimator;->cancel()V

    .line 311
    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->mDirectionAnimator:Lcom/ts/tsclock/CustomDirectionAnimator;

    iget-object v8, p0, Lcom/ts/tsclock/ViewPager1;->mDirectionAnimator:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-virtual {v8}, Lcom/ts/tsclock/CustomDirectionAnimator;->getCurrentValue()F

    move-result v8

    invoke-virtual {v7, v8, v4}, Lcom/ts/tsclock/CustomDirectionAnimator;->setValue(FF)V

    .line 317
    :goto_2
    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->mDirectionAnimator:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-virtual {v7}, Lcom/ts/tsclock/CustomDirectionAnimator;->start()V

    .line 319
    iput v5, p0, Lcom/ts/tsclock/ViewPager1;->mLastDirection:I

    goto :goto_1

    .line 313
    :cond_2
    new-instance v7, Lcom/ts/tsclock/CustomDirectionAnimator;

    iget-object v8, p0, Lcom/ts/tsclock/ViewPager1;->img_compass_dial:Landroid/widget/ImageView;

    invoke-direct {v7, v8}, Lcom/ts/tsclock/CustomDirectionAnimator;-><init>(Landroid/view/View;)V

    iput-object v7, p0, Lcom/ts/tsclock/ViewPager1;->mDirectionAnimator:Lcom/ts/tsclock/CustomDirectionAnimator;

    .line 314
    iget-object v7, p0, Lcom/ts/tsclock/ViewPager1;->mDirectionAnimator:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-virtual {v7, v6, v4}, Lcom/ts/tsclock/CustomDirectionAnimator;->setValue(FF)V

    goto :goto_2
.end method

.method private updateSpeed()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 329
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->tv_speed:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->img_speed_pointer:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v1, 0x0

    .line 334
    .local v1, "speed":I
    :try_start_0
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v2}, Lcom/ts/main/common/ITsCommon;->GetSpeed()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    .line 341
    :goto_1
    iget v2, p0, Lcom/ts/tsclock/ViewPager1;->isKmh:I

    if-ne v2, v7, :cond_2

    .line 342
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->tv_speed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    const v4, 0x7f050003

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 349
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    :goto_3
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/ts/tsclock/ViewPager1;->speedNums:[I

    div-int/lit8 v4, v1, 0x64

    rem-int/lit8 v4, v4, 0xa

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/ts/tsclock/ViewPager1;->speedNums:[I

    div-int/lit8 v4, v1, 0xa

    rem-int/lit8 v4, v4, 0xa

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/ts/tsclock/ViewPager1;->speedNums:[I

    div-int/lit8 v4, v1, 0x1

    rem-int/lit8 v4, v4, 0xa

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 344
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    int-to-double v2, v1

    const-wide v4, 0x3fe3e2435696e58aL    # 0.62137

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 345
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->tv_speed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 352
    :cond_3
    const/16 v2, 0x64

    if-ge v1, v2, :cond_4

    .line 353
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 357
    :cond_4
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1;->iv_speed:[Landroid/widget/ImageView;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 434
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 437
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 438
    :cond_0
    const/4 v2, 0x0

    .line 453
    :goto_0
    return-object v2

    .line 442
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 443
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 444
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 445
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 451
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getSupportChangeLogo()I
    .locals 9

    .prologue
    .line 488
    const/4 v3, 0x0

    .line 491
    .local v3, "supportChangeLogo":I
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 492
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 493
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "persist.support.change.logo"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "0"

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 494
    .local v4, "type":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 495
    const-string v5, "Vp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSupportChangeLogo supportChangeLogo = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "type":Ljava/lang/String;
    :goto_0
    return v3

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Vp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSupportChangeLogoExceptione = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget v1, p0, Lcom/ts/tsclock/ViewPager1;->isKmh:I

    if-ne v1, v2, :cond_0

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/ts/tsclock/ViewPager1;->isKmh:I

    .line 106
    :goto_1
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "iskmh"

    iget v3, p0, Lcom/ts/tsclock/ViewPager1;->isKmh:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 104
    :cond_0
    iput v2, p0, Lcom/ts/tsclock/ViewPager1;->isKmh:I

    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f08002e
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->sconn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/ts/tsclock/ViewPager1;->bindCommService()V

    .line 118
    invoke-direct {p0}, Lcom/ts/tsclock/ViewPager1;->initUI()V

    .line 122
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1;->dealTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/ts/tsclock/ViewPager1;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 125
    return-void
.end method

.method public updateLogo()V
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lcom/ts/tsclock/TsPrefrence;->getLogoImg()I

    move-result v0

    .line 189
    .local v0, "logoImg":I
    if-nez v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->mIvLogo:Landroid/widget/ImageView;

    const v2, 0x7f02007f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1;->mIvLogo:Landroid/widget/ImageView;

    const v2, 0x7f02007e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
