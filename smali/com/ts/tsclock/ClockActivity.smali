.class public Lcom/ts/tsclock/ClockActivity;
.super Landroid/app/Activity;
.field private kvStore:Lcom/ts/tsclock/KeyValueStore;

.source "ClockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_MULTI_SCREEN_ANIMATION:Ljava/lang/String; = "com.ts.tsclock.ACTION_MULTI_SCREEN_ANIMATION"

.field public static final BROADCAST_LANCHER_FUNC_MUTE:Ljava/lang/String; = "forfan.intent.action.MUTE"

.field public static final BROADCAST_LANCHER_FUNC_SCREENOFF:Ljava/lang/String; = "forfan.intent.action.SCREENOFF"

.field public static final BROADCAST_LANCHER_FUNC_VOLUMEADD:Ljava/lang/String; = "forfan.intent.action.VOLUMEUP"

.field public static final BROADCAST_LANCHER_FUNC_VOLUMEDEC:Ljava/lang/String; = "forfan.intent.action.VOLUMEDN"

.field public static final MULTI_SCREEN_APPNAME:Ljava/lang/String; = "com.ts.multiscreen.appname"

.field private static final NOTIFY_ID:I = 0xa3

.field public static final TAG:Ljava/lang/String; = "ClockActivity"


# instance fields
.field mBtnAllapp:Landroid/widget/Button;

.field mBtnClose:Landroid/widget/Button;

.field mBtnHome:Landroid/widget/Button;

.field mBtnMusic:Landroid/widget/Button;

.field mBtnNavi:Landroid/widget/Button;

.field mBtnScreenMute:Landroid/widget/Button;

.field mBtnVideo:Landroid/widget/Button;

.field private mGridViews:[Lcom/ts/tsclock/CustomGridView;

.field private mHandler:Landroid/os/Handler;

.field mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

.field mIsAppList:Z

.field mIvPoint:Landroid/widget/ImageView;

.field mIvTime:[Landroid/widget/ImageView;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnable:Ljava/lang/Runnable;

.field mRvAppList:Landroid/widget/RelativeLayout;

.field mRvClock:Landroid/widget/RelativeLayout;

.field mRvs:[Landroid/widget/RelativeLayout;

.field mStringLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTxtAm:Landroid/widget/TextView;

.field mTxtPm:Landroid/widget/TextView;

.field mViewPager:Landroid/support/v4/view/ViewPager;

.field mViewPagerAdapter:Lcom/ts/tsclock/ViewPagerAdapter;

.field mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mVp1:Lcom/ts/tsclock/ViewPager1;

.field private nums:[I

.field private times:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/ClockActivity;->mViews:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ts/tsclock/ClockActivity;->times:[I

    .line 60
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 63
    iput-object v0, p0, Lcom/ts/tsclock/ClockActivity;->nums:[I

    .line 64
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/ClockActivity;->mIvTime:[Landroid/widget/ImageView;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/tsclock/ClockActivity;->mIsAppList:Z

    .line 80
    new-instance v0, Lcom/ts/tsclock/ClockActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/ClockActivity$1;-><init>(Lcom/ts/tsclock/ClockActivity;)V

    iput-object v0, p0, Lcom/ts/tsclock/ClockActivity;->mRunnable:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Lcom/ts/tsclock/ClockActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/ClockActivity$2;-><init>(Lcom/ts/tsclock/ClockActivity;)V

    iput-object v0, p0, Lcom/ts/tsclock/ClockActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    return-void

    .line 59
    :array_0
    .array-data 4
        0x7f080001
        0x7f080002
        0x7f080004
        0x7f080005
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x7f02006f
        0x7f020070
        0x7f020071
        0x7f020072
        0x7f020073
        0x7f020074
        0x7f020075
        0x7f020076
        0x7f020077
        0x7f020078
    .end array-data
.end method

.method static synthetic access$0(Lcom/ts/tsclock/ClockActivity;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/ts/tsclock/ClockActivity;->setClock()V

    return-void
.end method

.method static synthetic access$1(Lcom/ts/tsclock/ClockActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ts/tsclock/ClockActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/tsclock/ClockActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Lcom/ts/tsclock/ClockActivity;->sendMultiScreenBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 129
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/ts/tsclock/ClockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 130
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 131
    return-void
.end method

.method private getMultiScreenControlLists()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 464
    invoke-virtual {p0}, Lcom/ts/tsclock/ClockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 465
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "content://com.ts.tsclock.provider/multi_screen_control"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 466
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 467
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v8, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    .line 469
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 470
    .local v6, "count":I
    const-string v2, "ClockActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMultiScreenControl count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ts/tsclock/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-lez v6, :cond_0

    .line 472
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    .end local v6    # "count":I
    :cond_0
    :goto_1
    return-object v8

    .line 473
    .restart local v6    # "count":I
    :cond_1
    const-string v2, "packagename"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 474
    .local v9, "packageName":Ljava/lang/String;
    const-string v2, "ClockActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMultiScreenControl packageName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ts/tsclock/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    .end local v6    # "count":I
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v2, "ClockActivity"

    const-string v3, "getMultiScreenControl cursor is null"

    invoke-static {v2, v3}, Lcom/ts/tsclock/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendBroadcast()V
    .locals 3

    .prologue
    .line 617
    const-string v1, "ClockActivity"

    const-string v2, "sendBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOCK_SCREEN_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ClockActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    return-void
.end method

.method private sendMainUIBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string v1, "ClockActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMainUIBroadcast action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 437
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ClockActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method private sendMultiScreenBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.ts.multiscreen.appname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "classname"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ClockActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method private setClock()V
    .locals 14

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/ts/tsclock/ClockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 488
    .local v6, "mResolver":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 490
    .local v5, "mCalendar":Ljava/util/Calendar;
    if-eqz v6, :cond_0

    .line 492
    const-string v11, "time_12_24"

    .line 491
    invoke-static {v6, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 493
    .local v9, "timeFormat":Ljava/lang/String;
    const/4 v0, 0x0

    .line 494
    .local v0, "clock":Ljava/lang/String;
    const/4 v3, 0x0

    .line 495
    .local v3, "is12":Z
    const/4 v1, 0x0

    .line 496
    .local v1, "h":I
    const/4 v4, 0x0

    .line 497
    .local v4, "m":I
    if-eqz v9, :cond_b

    .line 498
    const-string v11, "24"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 500
    const/4 v3, 0x0

    .line 501
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 502
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 504
    const/16 v11, 0xa

    if-ge v1, v11, :cond_2

    .line 505
    const/16 v11, 0xa

    if-ge v4, v11, :cond_1

    .line 506
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    :goto_0
    const-string v11, "tsclock"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "clock = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz v3, :cond_14

    .line 583
    const/16 v11, 0xa

    if-ge v1, v11, :cond_12

    .line 584
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mIvTime:[Landroid/widget/ImageView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    :goto_1
    const/16 v11, 0x9

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 589
    .local v8, "r":I
    const-string v10, ""

    .line 590
    .local v10, "timestr":Ljava/lang/String;
    if-nez v8, :cond_13

    .line 591
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mTxtAm:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mTxtPm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    .end local v8    # "r":I
    .end local v10    # "timestr":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_0

    .line 605
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v2, v11, :cond_15

    .line 614
    .end local v0    # "clock":Ljava/lang/String;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "is12":Z
    .end local v4    # "m":I
    .end local v9    # "timeFormat":Ljava/lang/String;
    :cond_0
    return-void

    .line 508
    .restart local v0    # "clock":Ljava/lang/String;
    .restart local v1    # "h":I
    .restart local v3    # "is12":Z
    .restart local v4    # "m":I
    .restart local v9    # "timeFormat":Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    goto :goto_0

    .line 511
    :cond_2
    const/16 v11, 0xa

    if-ge v4, v11, :cond_3

    .line 512
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    goto :goto_0

    .line 514
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    goto/16 :goto_0

    .line 519
    :cond_4
    const/4 v3, 0x1

    .line 520
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 521
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 522
    if-nez v1, :cond_5

    .line 523
    const/16 v1, 0xc

    .line 526
    :cond_5
    const/16 v11, 0xa

    if-ge v1, v11, :cond_9

    .line 527
    if-nez v1, :cond_7

    .line 528
    const/16 v11, 0xa

    if-ge v4, v11, :cond_6

    .line 529
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "120"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    goto/16 :goto_0

    .line 531
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "12"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    goto/16 :goto_0

    .line 534
    :cond_7
    const/16 v11, 0xa

    if-ge v4, v11, :cond_8

    .line 535
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    goto/16 :goto_0

    .line 537
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    goto/16 :goto_0

    .line 541
    :cond_9
    const/16 v11, 0xa

    if-ge v4, v11, :cond_a

    .line 542
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    goto/16 :goto_0

    .line 544
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    goto/16 :goto_0

    .line 550
    :cond_b
    const/4 v3, 0x1

    .line 551
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 552
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 554
    if-nez v1, :cond_c

    .line 555
    const/16 v1, 0xc

    .line 558
    :cond_c
    const/16 v11, 0xa

    if-ge v1, v11, :cond_10

    .line 559
    if-nez v1, :cond_e

    .line 560
    const/16 v11, 0xa

    if-ge v4, v11, :cond_d

    .line 561
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "120"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    goto/16 :goto_0

    .line 563
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "12"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    goto/16 :goto_0

    .line 566
    :cond_e
    const/16 v11, 0xa

    if-ge v4, v11, :cond_f

    .line 567
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    goto/16 :goto_0

    .line 569
    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    goto/16 :goto_0

    .line 573
    :cond_10
    const/16 v11, 0xa

    if-ge v4, v11, :cond_11

    .line 574
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    goto/16 :goto_0

    .line 576
    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 586
    :cond_12
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mIvTime:[Landroid/widget/ImageView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 594
    .restart local v8    # "r":I
    .restart local v10    # "timestr":Ljava/lang/String;
    :cond_13
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mTxtAm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mTxtPm:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 598
    .end local v8    # "r":I
    .end local v10    # "timestr":Ljava/lang/String;
    :cond_14
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mIvTime:[Landroid/widget/ImageView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mTxtAm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mTxtPm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 607
    .restart local v2    # "i":I
    :cond_15
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 609
    .local v7, "num":I
    iget-object v11, p0, Lcom/ts/tsclock/ClockActivity;->mIvTime:[Landroid/widget/ImageView;

    aget-object v11, v11, v2

    iget-object v12, p0, Lcom/ts/tsclock/ClockActivity;->nums:[I

    aget v12, v12, v7

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method

.method private showNotification()V
    .locals 7

    .prologue
    .line 113
    const-string v2, "ClockActivity"

    const-string v3, "showNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/ts/tsclock/ClockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/ts/tsclock/ClockActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 116
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 117
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "builder":Landroid/app/Notification$Builder;
    const-string v2, "TsClock"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 124
    :goto_0
    const v2, 0x7f020042

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 125
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/ts/tsclock/ClockActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0xa3

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 126
    return-void

    .line 120
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v2, "TsClock"

    invoke-direct {v0, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/ts/tsclock/ClockActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 122
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "TsClock"

    const-string v5, "TsClock"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 121
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0
.end method


# virtual methods
.method public createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 648
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 649
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 652
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 653
    :cond_0
    const/4 v2, 0x0

    .line 668
    :goto_0
    return-object v2

    .line 657
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 658
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 659
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 660
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 666
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 673
    const/4 v0, 0x1

    return v0
.end method

.method initData()V
    .locals 3

    .prologue
    .line 219
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ts/tsclock/ClockActivity;->mHandler:Landroid/os/Handler;

    .line 220
    iget-object v1, p0, Lcom/ts/tsclock/ClockActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ts/tsclock/ClockActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    invoke-static {}, Lcom/ts/tsclock/BackBox;->getInstance()Lcom/ts/tsclock/BackBox;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/tsclock/BackBox;->initWindow(Landroid/content/Context;)V

    .line 222
    invoke-static {}, Lcom/ts/tsclock/BackBox;->getInstance()Lcom/ts/tsclock/BackBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/tsclock/BackBox;->show()V

    .line 223
    invoke-static {}, Lcom/ts/tsclock/FloatWindow;->getInstance()Lcom/ts/tsclock/FloatWindow;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/tsclock/FloatWindow;->initWindow(Landroid/content/Context;)V

    .line 224
    invoke-static {}, Lcom/ts/tsclock/FloatWindow;->getInstance()Lcom/ts/tsclock/FloatWindow;

    move-result-object v1

    new-instance v2, Lcom/ts/tsclock/ClockActivity$4;

    invoke-direct {v2, p0}, Lcom/ts/tsclock/ClockActivity$4;-><init>(Lcom/ts/tsclock/ClockActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/tsclock/FloatWindow;->setOnClickBackHome(Lcom/ts/tsclock/FloatWindow$OnClickBackHome;)V

    .line 233
    invoke-static {}, Lcom/ts/tsclock/MultiScreenWindow;->getInstance()Lcom/ts/tsclock/MultiScreenWindow;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/tsclock/MultiScreenWindow;->initWindow(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/ts/tsclock/MultiScreenWindow;->getInstance()Lcom/ts/tsclock/MultiScreenWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/tsclock/MultiScreenWindow;->hide()V

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.ts.tsclock.ACTION_MULTI_SCREEN_ANIMATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/ts/tsclock/ClockActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ts/tsclock/ClockActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    
    :try_start_kv
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v0

    const-string v1, "/buttonMapping.ini"
    new-instance v2, Ljava/io/File;
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0

    new-instance v1, Lcom/ts/tsclock/KeyValueStore;
    invoke-direct {v1, v0}, Lcom/ts/tsclock/KeyValueStore;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ts/tsclock/ClockActivity;->kvStore:Lcom/ts/tsclock/KeyValueStore;

    goto :end_kv

    :try_end_kv
    .catch Ljava/lang/Exception; {:try_start_kv .. :try_end_kv} :catch_kv

    :catch_kv
    move-exception v0

    new-instance v1, Lcom/ts/tsclock/KeyValueStore;
    invoke-direct {v1}, Lcom/ts/tsclock/KeyValueStore;-><init>()V
    iput-object v1, p0, Lcom/ts/tsclock/ClockActivity;->kvStore:Lcom/ts/tsclock/KeyValueStore;

    :end_kv

    invoke-direct {p0}, Lcom/ts/tsclock/ClockActivity;->overrideButtons()V
    return-void
.end method

.method initView()V
    .locals 23

    .prologue
    .line 283
    const v18, 0x7f08000e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mRvClock:Landroid/widget/RelativeLayout;

    .line 284
    new-instance v18, Lcom/ts/tsclock/ViewPager1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ts/tsclock/ViewPager1;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mVp1:Lcom/ts/tsclock/ViewPager1;

    .line 295
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 296
    const/16 v18, 0x5a9

    const/16 v19, -0x1

    .line 295
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 297
    .local v10, "mLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0xf0

    move/from16 v0, v18

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mRvClock:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mVp1:Lcom/ts/tsclock/ViewPager1;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    const/high16 v18, 0x7f080000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mRvAppList:Landroid/widget/RelativeLayout;

    .line 308
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 309
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const/16 v13, 0xe

    .line 310
    .local v13, "pageSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/ts/tsclock/ClockActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 311
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 312
    .local v9, "mIntent":Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/ts/tsclock/ClockActivity;->getMultiScreenControlLists()Ljava/util/List;

    move-result-object v5

    .line 314
    .local v5, "ignoreLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 315
    .local v8, "listAllApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_1

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "com.ts.dvdplayer"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "com.ts.dvdplayer.USBActivity"

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "com.ts.dvdplayer"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "com.ts.dvdplayer.SDActivity"

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v16

    .line 328
    .local v16, "size":I
    rem-int v18, v16, v13

    if-nez v18, :cond_2

    .line 329
    div-int v12, v16, v13

    .line 333
    .local v12, "page":I
    :goto_1
    const-string v18, "lh"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "page = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-array v0, v12, [Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mRvs:[Landroid/widget/RelativeLayout;

    .line 335
    new-array v0, v12, [Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    .line 336
    new-array v0, v12, [Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    .line 337
    const v18, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 339
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v12, :cond_3

    .line 365
    new-instance v18, Lcom/ts/tsclock/ViewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViews:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/ts/tsclock/ViewPagerAdapter;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mViewPagerAdapter:Lcom/ts/tsclock/ViewPagerAdapter;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViewPagerAdapter:Lcom/ts/tsclock/ViewPagerAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 370
    const v18, 0x7f080003

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mIvPoint:Landroid/widget/ImageView;

    .line 371
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->times:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v4, v0, :cond_5

    .line 374
    const v18, 0x7f080006

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mTxtAm:Landroid/widget/TextView;

    .line 375
    const v18, 0x7f080007

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mTxtPm:Landroid/widget/TextView;

    .line 377
    const v18, 0x7f080009

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mBtnHome:Landroid/widget/Button;

    .line 378
    const v18, 0x7f08000f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mBtnNavi:Landroid/widget/Button;

    .line 379
    const v18, 0x7f080010

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mBtnMusic:Landroid/widget/Button;

    .line 380
    const v18, 0x7f080011

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mBtnVideo:Landroid/widget/Button;

    .line 381
    const v18, 0x7f080012

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mBtnAllapp:Landroid/widget/Button;

    .line 382
    const v18, 0x7f080013

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mBtnClose:Landroid/widget/Button;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mBtnHome:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mBtnNavi:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mBtnMusic:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mBtnVideo:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mBtnAllapp:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mBtnClose:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void

    .line 315
    .end local v4    # "i":I
    .end local v12    # "page":I
    .end local v16    # "size":I
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 316
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 317
    .local v11, "packageName":Ljava/lang/String;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 318
    .local v2, "className":Ljava/lang/String;
    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    const/16 v21, 0x1

    aput-object v2, v20, v21

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 331
    .end local v2    # "className":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "size":I
    :cond_2
    div-int v18, v16, v13

    add-int/lit8 v12, v18, 0x1

    .restart local v12    # "page":I
    goto/16 :goto_1

    .line 340
    .restart local v4    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mRvs:[Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    const v18, 0x7f030009

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    aput-object v18, v19, v4

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViews:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mRvs:[Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v18, v0

    new-instance v19, Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ts/tsclock/IconAdapter;-><init>(Landroid/content/Context;)V

    aput-object v19, v18, v4

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mRvs:[Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    const v20, 0x7f08002f

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/ts/tsclock/CustomGridView;

    aput-object v18, v19, v4

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    invoke-virtual/range {v18 .. v19}, Lcom/ts/tsclock/CustomGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    move v6, v4

    .line 346
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    new-instance v19, Lcom/ts/tsclock/ClockActivity$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/ts/tsclock/ClockActivity$5;-><init>(Lcom/ts/tsclock/ClockActivity;I)V

    invoke-virtual/range {v18 .. v19}, Lcom/ts/tsclock/CustomGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 358
    mul-int v17, v4, v13

    .line 359
    .local v17, "start":I
    mul-int v18, v4, v13

    add-int v3, v18, v13

    .line 360
    .local v3, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v3, v0, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    .line 363
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/ts/tsclock/IconAdapter;->update(Ljava/util/List;)V

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 372
    .end local v3    # "end":I
    .end local v6    # "index":I
    .end local v17    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mIvTime:[Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->times:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    aput-object v18, v19, v4

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method


.method public onClick(Landroid/view/View;)V

    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I
    move-result v0

    
    iget-object v5, p0, Lcom/ts/tsclock/ClockActivity;->kvStore:Lcom/ts/tsclock/KeyValueStore;

    const/16 v10, 0x8
    const/4 v11, 0x0

    # --- btn_home (0x7f080009) ---
    const v1, 0x7f080009
    if-ne v0, v1, :check_navi

    iget-object v1, p0, Lcom/ts/tsclock/ClockActivity;->mVp1:Lcom/ts/tsclock/ViewPager1;
    invoke-virtual {v1, v11}, Lcom/ts/tsclock/ViewPager1;->setVisibility(I)V

    iget-object v1, p0, Lcom/ts/tsclock/ClockActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1, v10}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :return_block

    # --- btn_navi (0x7f08000f) ---
:check_navi
    const v1, 0x7f08000f
    if-ne v0, v1, :check_music

    const-string v6, "btn1pkg"
    invoke-virtual {v5, v6}, Lcom/ts/tsclock/KeyValueStore;->getValue(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7

    const-string v6, "btn1class"
    invoke-virtual {v5, v6}, Lcom/ts/tsclock/KeyValueStore;->getValue(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8

    const-string v9, "com.ts.MainUI"
    const-string v10, "com.ts.main.navi.NaviMainActivity"

    if-eqz v7, :use_default_navi_pkg
    move-object v9, v7
  :use_default_navi_pkg

    if-eqz v8, :use_default_navi_cls
    move-object v10, v8
  :use_default_navi_cls

    invoke-direct {p0, v9, v10}, Lcom/ts/tsclock/ClockActivity;->sendMultiScreenBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    goto :return_block

    # --- btn_music (0x7f080010) ---
:check_music
    const v1, 0x7f080010
    if-ne v0, v1, :check_video

    const-string v6, "btn2pkg"
    invoke-virtual {v5, v6}, Lcom/ts/tsclock/KeyValueStore;->getValue(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7

    const-string v6, "btn2class"
    invoke-virtual {v5, v6}, Lcom/ts/tsclock/KeyValueStore;->getValue(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8

    const-string v9, "com.ts.dvdplayer"
    const-string v10, "com.ts.dvdplayer.SDActivity"

    if-eqz v7, :use_default_music_pkg
    move-object v9, v7
  :use_default_music_pkg

    if-eqz v8, :use_default_music_cls
    move-object v10, v8
  :use_default_music_cls

    invoke-direct {p0, v9, v10}, Lcom/ts/tsclock/ClockActivity;->sendMultiScreenBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    goto :return_block

    # --- btn_video (0x7f080011) ---
:check_video
    const v1, 0x7f080011
    if-ne v0, v1, :check_allapp

    const-string v6, "btn3pkg"
    invoke-virtual {v5, v6}, Lcom/ts/tsclock/KeyValueStore;->getValue(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7

    const-string v6, "btn3class"
    invoke-virtual {v5, v6}, Lcom/ts/tsclock/KeyValueStore;->getValue(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8

    const-string v9, "com.ts.dvdplayer"
    const-string v10, "com.ts.dvdplayer.USBActivity"

    if-eqz v7, :use_default_video_pkg
    move-object v9, v7
  :use_default_video_pkg

    if-eqz v8, :use_default_video_cls
    move-object v10, v8
  :use_default_video_cls

    invoke-direct {p0, v9, v10}, Lcom/ts/tsclock/ClockActivity;->sendMultiScreenBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    goto :return_block

    # --- btn_allapp (0x7f080012) ---
:check_allapp
    const v1, 0x7f080012
    if-ne v0, v1, :check_close

    iget-object v1, p0, Lcom/ts/tsclock/ClockActivity;->mVp1:Lcom/ts/tsclock/ViewPager1;
    invoke-virtual {v1, v10}, Lcom/ts/tsclock/ViewPager1;->setVisibility(I)V

    iget-object v1, p0, Lcom/ts/tsclock/ClockActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1, v11}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V
    goto :return_block

    # --- btn_close (0x7f080013) ---
:check_close
    const v1, 0x7f080013
    if-ne v0, v1, :return_block

    const-string v1, "forfan.intent.action.SCREENOFF"
    invoke-direct {p0, v1}, Lcom/ts/tsclock/ClockActivity;->sendMainUIBroadcast(Ljava/lang/String;)V

:return_block
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    const-string v0, "ClockActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ClockActivity;->requestWindowFeature(I)Z

    .line 202
    invoke-virtual {p0}, Lcom/ts/tsclock/ClockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 203
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ClockActivity;->setContentView(I)V

    .line 204
    invoke-virtual {p0}, Lcom/ts/tsclock/ClockActivity;->initView()V

    .line 205
    invoke-virtual {p0}, Lcom/ts/tsclock/ClockActivity;->initData()V

    .line 206
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 276
    const-string v0, "ClockActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/ts/tsclock/ClockActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ClockActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-static {}, Lcom/ts/tsclock/FloatWindow;->getInstance()Lcom/ts/tsclock/FloatWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/FloatWindow;->setAppList(Z)V

    .line 269
    invoke-virtual {p0, v1, v1}, Lcom/ts/tsclock/ClockActivity;->overridePendingTransition(II)V

    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 271
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/ts/tsclock/BackBox;->getInstance()Lcom/ts/tsclock/BackBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/tsclock/BackBox;->show()V

    .line 246
    invoke-static {}, Lcom/ts/tsclock/FloatWindow;->getInstance()Lcom/ts/tsclock/FloatWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/tsclock/FloatWindow;->hide()V

    .line 247
    invoke-static {}, Lcom/ts/tsclock/FloatWindow;->getInstance()Lcom/ts/tsclock/FloatWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/FloatWindow;->setAppList(Z)V

    .line 260
    invoke-virtual {p0, v2, v2}, Lcom/ts/tsclock/ClockActivity;->overridePendingTransition(II)V

    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 262
    return-void
.end method

.method startScreenProtect()V
    .locals 3

    .prologue
    .line 209
    const-string v1, "test"

    const-string v2, "startScreenProtect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/ts/tsclock/ScreenProtectActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Lcom/ts/tsclock/ClockActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method updateAppData()V
    .locals 22

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViews:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 136
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 137
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const/16 v12, 0xe

    .line 138
    .local v12, "pageSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/ts/tsclock/ClockActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 139
    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .local v9, "mIntent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/ts/tsclock/ClockActivity;->getMultiScreenControlLists()Ljava/util/List;

    move-result-object v5

    .line 142
    .local v5, "ignoreLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 143
    .local v8, "listAllApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "com.ts.dvdplayer"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "com.ts.dvdplayer.USBActivity"

    aput-object v21, v19, v20

    invoke-interface/range {v17 .. v19}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "com.ts.dvdplayer"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "com.ts.dvdplayer.SDActivity"

    aput-object v21, v19, v20

    invoke-interface/range {v17 .. v19}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    .line 156
    .local v15, "size":I
    rem-int v17, v15, v12

    if-nez v17, :cond_2

    .line 157
    div-int v11, v15, v12

    .line 161
    .local v11, "page":I
    :goto_1
    const-string v17, "lh"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "page = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v17, "lh"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "size = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-array v0, v11, [Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mRvs:[Landroid/widget/RelativeLayout;

    .line 164
    new-array v0, v11, [Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    .line 165
    new-array v0, v11, [Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    .line 166
    const v17, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/ClockActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 167
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v11, :cond_3

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViewPagerAdapter:Lcom/ts/tsclock/ViewPagerAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViews:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/ts/tsclock/ViewPagerAdapter;->updateData(Ljava/util/List;)V

    .line 194
    return-void

    .line 143
    .end local v4    # "i":I
    .end local v11    # "page":I
    .end local v15    # "size":I
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 144
    .local v14, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 145
    .local v10, "packageName":Ljava/lang/String;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 146
    .local v2, "className":Ljava/lang/String;
    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v2, v19, v20

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 159
    .end local v2    # "className":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v14    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v15    # "size":I
    :cond_2
    div-int v17, v15, v12

    add-int/lit8 v11, v17, 0x1

    .restart local v11    # "page":I
    goto/16 :goto_1

    .line 168
    .restart local v4    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mRvs:[Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const v17, 0x7f030009

    const/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    aput-object v17, v18, v4

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViews:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mRvs:[Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v17, v0

    new-instance v18, Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ts/tsclock/IconAdapter;-><init>(Landroid/content/Context;)V

    aput-object v18, v17, v4

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mRvs:[Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    const v19, 0x7f08002f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/ts/tsclock/CustomGridView;

    aput-object v17, v18, v4

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v17 .. v18}, Lcom/ts/tsclock/CustomGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    move v6, v4

    .line 174
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    new-instance v18, Lcom/ts/tsclock/ClockActivity$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/ts/tsclock/ClockActivity$3;-><init>(Lcom/ts/tsclock/ClockActivity;I)V

    invoke-virtual/range {v17 .. v18}, Lcom/ts/tsclock/CustomGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    mul-int v16, v4, v12

    .line 187
    .local v16, "start":I
    mul-int v17, v4, v12

    add-int v3, v17, v12

    .line 188
    .local v3, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v3, v0, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 191
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/ts/tsclock/IconAdapter;->update(Ljava/util/List;)V

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method private overrideButtons()V
    .locals 10

    const/4 v0, 0x0

    :loop_start
    const/4 v1, 0x5
    if-ge v0, v1, :loop_end

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "/Pictures/tsclock/btn"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, "_up.png"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    new-instance v5, Ljava/io/File;
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "/Pictures/tsclock/btn"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, "_dn.png"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    new-instance v7, Ljava/io/File;
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0  # Drawable result (initially null)

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    move-result v9
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    move-result v3
    and-int/2addr v9, v3
    if-eqz v9, :skip_drawable

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v5

    invoke-virtual {p0}, Lcom/ts/tsclock/ClockActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v6

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v2, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v4, v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/drawable/StateListDrawable;
    invoke-direct {v8}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v5, 0x1
    new-array v6, v5, [I
    const v7, 0x10100a7
    const/4 v5, 0x0
    aput v7, v6, v5
    invoke-virtual {v8, v6, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v6, v5, [I
    invoke-virtual {v8, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0
    if-eq v0, v9, :set_home
    const/4 v9, 0x1
    if-eq v0, v9, :set_navi
    const/4 v9, 0x2
    if-eq v0, v9, :set_music
    const/4 v9, 0x3
    if-eq v0, v9, :set_video
    const/4 v9, 0x4
    if-eq v0, v9, :set_allapp
    goto :loop_continue

    :set_home
    iget-object v3, p0, Lcom/ts/tsclock/ClockActivity;->mBtnHome:Landroid/widget/Button;
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :loop_continue

    :set_navi
    iget-object v3, p0, Lcom/ts/tsclock/ClockActivity;->mBtnNavi:Landroid/widget/Button;
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :loop_continue

    :set_music
    iget-object v3, p0, Lcom/ts/tsclock/ClockActivity;->mBtnMusic:Landroid/widget/Button;
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :loop_continue

    :set_video
    iget-object v3, p0, Lcom/ts/tsclock/ClockActivity;->mBtnVideo:Landroid/widget/Button;
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :loop_continue

    :set_allapp
    iget-object v3, p0, Lcom/ts/tsclock/ClockActivity;->mBtnAllapp:Landroid/widget/Button;
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    
		:skip_drawable

    :loop_continue
    add-int/lit8 v0, v0, 0x1
    goto :loop_start

    :loop_end
    return-void
.end method
