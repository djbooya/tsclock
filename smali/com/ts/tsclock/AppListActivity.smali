.class public Lcom/ts/tsclock/AppListActivity;
.super Landroid/app/Activity;
.source "AppListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MULTI_SCREEN_APPNAME:Ljava/lang/String; = "com.ts.multiscreen.appname"

.field private static final TAG:Ljava/lang/String; = "AppListActivity"


# instance fields
.field mBtnHome:Landroid/widget/Button;

.field mBtnMute:Landroid/widget/Button;

.field mBtnScreenMute:Landroid/widget/Button;

.field mBtnScreenOff:Landroid/widget/Button;

.field mBtnVolumeDn:Landroid/widget/Button;

.field mBtnVolumeUp:Landroid/widget/Button;

.field private mGridViews:[Lcom/ts/tsclock/CustomGridView;

.field private mHandler:Landroid/os/Handler;

.field mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

.field mIvPoint:Landroid/widget/ImageView;

.field mIvTime:[Landroid/widget/ImageView;

.field private mRunnable:Ljava/lang/Runnable;

.field mRvApplist:Landroid/widget/RelativeLayout;

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

.field m_CommService:Lcom/ts/main/common/ITsCommon;

.field private nums:[I

.field sconn:Landroid/content/ServiceConnection;

.field private times:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/AppListActivity;->mViews:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/AppListActivity;->mStringLists:Ljava/util/List;

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ts/tsclock/AppListActivity;->times:[I

    .line 48
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 51
    iput-object v0, p0, Lcom/ts/tsclock/AppListActivity;->nums:[I

    .line 52
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/tsclock/AppListActivity;->mIvTime:[Landroid/widget/ImageView;

    .line 65
    new-instance v0, Lcom/ts/tsclock/AppListActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/AppListActivity$1;-><init>(Lcom/ts/tsclock/AppListActivity;)V

    iput-object v0, p0, Lcom/ts/tsclock/AppListActivity;->mRunnable:Ljava/lang/Runnable;

    .line 427
    new-instance v0, Lcom/ts/tsclock/AppListActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/AppListActivity$2;-><init>(Lcom/ts/tsclock/AppListActivity;)V

    iput-object v0, p0, Lcom/ts/tsclock/AppListActivity;->sconn:Landroid/content/ServiceConnection;

    .line 37
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x7f080001
        0x7f080002
        0x7f080004
        0x7f080005
    .end array-data

    .line 48
    :array_1
    .array-data 4
        0x7f020035
        0x7f020036
        0x7f020037
        0x7f020038
        0x7f020039
        0x7f02003a
        0x7f02003b
        0x7f02003c
        0x7f02003d
        0x7f02003e
    .end array-data
.end method

.method static synthetic access$0(Lcom/ts/tsclock/AppListActivity;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/ts/tsclock/AppListActivity;->setClock()V

    return-void
.end method

.method static synthetic access$1(Lcom/ts/tsclock/AppListActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/tsclock/AppListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/ts/tsclock/AppListActivity;->sendMultiScreenBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private bindCommService()V
    .locals 3

    .prologue
    .line 417
    const-string v1, "AppListActivity"

    const-string v2, "bindCommService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "com.ts.MainUI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0, p0, v0}, Lcom/ts/tsclock/AppListActivity;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    .line 423
    iget-object v1, p0, Lcom/ts/tsclock/AppListActivity;->sconn:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/tsclock/AppListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 425
    :cond_0
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

    .line 258
    invoke-virtual {p0}, Lcom/ts/tsclock/AppListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 259
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "content://com.ts.tsclock.provider/multi_screen_control"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 260
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 261
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v8, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    .line 263
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 264
    .local v6, "count":I
    const-string v2, "AppListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMultiScreenControl count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ts/tsclock/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-lez v6, :cond_0

    .line 266
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    .end local v6    # "count":I
    :cond_0
    :goto_1
    return-object v8

    .line 267
    .restart local v6    # "count":I
    :cond_1
    const-string v2, "packagename"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "packageName":Ljava/lang/String;
    const-string v2, "AppListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMultiScreenControl packageName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ts/tsclock/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v6    # "count":I
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v2, "AppListActivity"

    const-string v3, "getMultiScreenControl cursor is null"

    invoke-static {v2, v3}, Lcom/ts/tsclock/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendBroadcast()V
    .locals 3

    .prologue
    .line 411
    const-string v1, "AppListActivity"

    const-string v2, "sendBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOCK_SCREEN_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ts/tsclock/AppListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method private sendMultiScreenBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.ts.multiscreen.appname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/ts/tsclock/AppListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method private setClock()V
    .locals 14

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/ts/tsclock/AppListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 282
    .local v6, "mResolver":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 284
    .local v5, "mCalendar":Ljava/util/Calendar;
    if-eqz v6, :cond_0

    .line 286
    const-string v11, "time_12_24"

    .line 285
    invoke-static {v6, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 287
    .local v9, "timeFormat":Ljava/lang/String;
    const/4 v0, 0x0

    .line 288
    .local v0, "clock":Ljava/lang/String;
    const/4 v3, 0x0

    .line 289
    .local v3, "is12":Z
    const/4 v1, 0x0

    .line 290
    .local v1, "h":I
    const/4 v4, 0x0

    .line 291
    .local v4, "m":I
    if-eqz v9, :cond_b

    .line 292
    const-string v11, "24"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 294
    const/4 v3, 0x0

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 296
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 298
    const/16 v11, 0xa

    if-ge v1, v11, :cond_2

    .line 299
    const/16 v11, 0xa

    if-ge v4, v11, :cond_1

    .line 300
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

    .line 375
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

    .line 376
    if-eqz v3, :cond_14

    .line 377
    const/16 v11, 0xa

    if-ge v1, v11, :cond_12

    .line 378
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mIvTime:[Landroid/widget/ImageView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    :goto_1
    const/16 v11, 0x9

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 383
    .local v8, "r":I
    const-string v10, ""

    .line 384
    .local v10, "timestr":Ljava/lang/String;
    if-nez v8, :cond_13

    .line 385
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mTxtAm:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mTxtPm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    .end local v8    # "r":I
    .end local v10    # "timestr":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_0

    .line 399
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v2, v11, :cond_15

    .line 408
    .end local v0    # "clock":Ljava/lang/String;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "is12":Z
    .end local v4    # "m":I
    .end local v9    # "timeFormat":Ljava/lang/String;
    :cond_0
    return-void

    .line 302
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

    .line 304
    goto :goto_0

    .line 305
    :cond_2
    const/16 v11, 0xa

    if-ge v4, v11, :cond_3

    .line 306
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

    .line 307
    goto :goto_0

    .line 308
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    goto/16 :goto_0

    .line 313
    :cond_4
    const/4 v3, 0x1

    .line 314
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 315
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 316
    if-nez v1, :cond_5

    .line 317
    const/16 v1, 0xc

    .line 320
    :cond_5
    const/16 v11, 0xa

    if-ge v1, v11, :cond_9

    .line 321
    if-nez v1, :cond_7

    .line 322
    const/16 v11, 0xa

    if-ge v4, v11, :cond_6

    .line 323
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "120"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    goto/16 :goto_0

    .line 325
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "12"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    goto/16 :goto_0

    .line 328
    :cond_7
    const/16 v11, 0xa

    if-ge v4, v11, :cond_8

    .line 329
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

    .line 330
    goto/16 :goto_0

    .line 331
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

    .line 334
    goto/16 :goto_0

    .line 335
    :cond_9
    const/16 v11, 0xa

    if-ge v4, v11, :cond_a

    .line 336
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

    .line 337
    goto/16 :goto_0

    .line 338
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    goto/16 :goto_0

    .line 344
    :cond_b
    const/4 v3, 0x1

    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 348
    if-nez v1, :cond_c

    .line 349
    const/16 v1, 0xc

    .line 352
    :cond_c
    const/16 v11, 0xa

    if-ge v1, v11, :cond_10

    .line 353
    if-nez v1, :cond_e

    .line 354
    const/16 v11, 0xa

    if-ge v4, v11, :cond_d

    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "120"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    goto/16 :goto_0

    .line 357
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "12"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    goto/16 :goto_0

    .line 360
    :cond_e
    const/16 v11, 0xa

    if-ge v4, v11, :cond_f

    .line 361
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

    .line 362
    goto/16 :goto_0

    .line 363
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

    .line 366
    goto/16 :goto_0

    .line 367
    :cond_10
    const/16 v11, 0xa

    if-ge v4, v11, :cond_11

    .line 368
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

    .line 369
    goto/16 :goto_0

    .line 370
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

    .line 380
    :cond_12
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mIvTime:[Landroid/widget/ImageView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 388
    .restart local v8    # "r":I
    .restart local v10    # "timestr":Ljava/lang/String;
    :cond_13
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mTxtAm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mTxtPm:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 392
    .end local v8    # "r":I
    .end local v10    # "timestr":Ljava/lang/String;
    :cond_14
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mIvTime:[Landroid/widget/ImageView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mTxtAm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mTxtPm:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 401
    .restart local v2    # "i":I
    :cond_15
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 403
    .local v7, "num":I
    iget-object v11, p0, Lcom/ts/tsclock/AppListActivity;->mIvTime:[Landroid/widget/ImageView;

    aget-object v11, v11, v2

    iget-object v12, p0, Lcom/ts/tsclock/AppListActivity;->nums:[I

    aget v12, v12, v7

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 444
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 447
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 448
    :cond_0
    const/4 v2, 0x0

    .line 463
    :goto_0
    return-object v2

    .line 452
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 453
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 454
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 455
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 461
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method initView()V
    .locals 21

    .prologue
    .line 113
    const/high16 v17, 0x7f080000

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mRvApplist:Landroid/widget/RelativeLayout;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mRvApplist:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mRvApplist:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    new-instance v18, Lcom/ts/tsclock/AppListActivity$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ts/tsclock/AppListActivity$3;-><init>(Lcom/ts/tsclock/AppListActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 124
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const/16 v12, 0x8

    .line 125
    .local v12, "pageSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/ts/tsclock/AppListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 126
    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v9, "mIntent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/ts/tsclock/AppListActivity;->getMultiScreenControlLists()Ljava/util/List;

    move-result-object v5

    .line 129
    .local v5, "ignoreLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 130
    .local v8, "listAllApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    .line 140
    .local v15, "size":I
    rem-int v17, v15, v12

    if-nez v17, :cond_2

    .line 141
    div-int v11, v15, v12

    .line 145
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

    .line 146
    new-array v0, v11, [Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mRvs:[Landroid/widget/RelativeLayout;

    .line 147
    new-array v0, v11, [Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    .line 148
    new-array v0, v11, [Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    .line 149
    const v17, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 150
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v11, :cond_3

    .line 173
    new-instance v17, Lcom/ts/tsclock/ViewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mViews:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/ts/tsclock/ViewPagerAdapter;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mViewPagerAdapter:Lcom/ts/tsclock/ViewPagerAdapter;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mViewPagerAdapter:Lcom/ts/tsclock/ViewPagerAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 175
    const v17, 0x7f080009

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mBtnHome:Landroid/widget/Button;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mBtnHome:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v17, 0x7f080003

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mIvPoint:Landroid/widget/ImageView;

    .line 179
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->times:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_5

    .line 182
    const v17, 0x7f080006

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mTxtAm:Landroid/widget/TextView;

    .line 183
    const v17, 0x7f080007

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mTxtPm:Landroid/widget/TextView;

    .line 185
    const v17, 0x7f08000a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mBtnMute:Landroid/widget/Button;

    .line 186
    const v17, 0x7f08000b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mBtnVolumeUp:Landroid/widget/Button;

    .line 187
    const v17, 0x7f08000c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mBtnVolumeDn:Landroid/widget/Button;

    .line 188
    const v17, 0x7f08000d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ts/tsclock/AppListActivity;->mBtnScreenOff:Landroid/widget/Button;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mBtnMute:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mBtnVolumeUp:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mBtnVolumeDn:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mBtnScreenOff:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void

    .line 130
    .end local v4    # "i":I
    .end local v11    # "page":I
    .end local v15    # "size":I
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 131
    .local v14, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 132
    .local v10, "packageName":Ljava/lang/String;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 133
    .local v2, "className":Ljava/lang/String;
    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mStringLists:Ljava/util/List;

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

    .line 143
    .end local v2    # "className":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v14    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v15    # "size":I
    :cond_2
    div-int v17, v15, v12

    add-int/lit8 v11, v17, 0x1

    .restart local v11    # "page":I
    goto/16 :goto_1

    .line 151
    .restart local v4    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mRvs:[Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const v17, 0x7f030009

    const/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    aput-object v17, v18, v4

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mViews:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mRvs:[Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v17, v0

    new-instance v18, Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ts/tsclock/IconAdapter;-><init>(Landroid/content/Context;)V

    aput-object v18, v17, v4

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mRvs:[Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    const v19, 0x7f08002f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/ts/tsclock/CustomGridView;

    aput-object v17, v18, v4

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v17 .. v18}, Lcom/ts/tsclock/CustomGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    move v6, v4

    .line 157
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mGridViews:[Lcom/ts/tsclock/CustomGridView;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    new-instance v18, Lcom/ts/tsclock/AppListActivity$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/ts/tsclock/AppListActivity$4;-><init>(Lcom/ts/tsclock/AppListActivity;I)V

    invoke-virtual/range {v17 .. v18}, Lcom/ts/tsclock/CustomGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    mul-int v16, v4, v12

    .line 167
    .local v16, "start":I
    mul-int v17, v4, v12

    add-int v3, v17, v12

    .line 168
    .local v3, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v3, v0, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 171
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mStringLists:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/ts/tsclock/IconAdapter;->update(Ljava/util/List;)V

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 180
    .end local v3    # "end":I
    .end local v6    # "index":I
    .end local v16    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->mIvTime:[Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/tsclock/AppListActivity;->times:[I

    move-object/from16 v17, v0

    aget v17, v17, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    aput-object v17, v18, v4

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 207
    .local v1, "id":I
    const v3, 0x7f080009

    if-ne v1, v3, :cond_1

    .line 208
    invoke-virtual {p0, v4, v4}, Lcom/ts/tsclock/AppListActivity;->overridePendingTransition(II)V

    .line 209
    invoke-virtual {p0}, Lcom/ts/tsclock/AppListActivity;->finish()V

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ts/tsclock/ClockActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v2}, Lcom/ts/tsclock/AppListActivity;->startActivity(Landroid/content/Intent;)V

    .line 255
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const v3, 0x7f08000a

    if-ne v1, v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    if-eqz v3, :cond_2

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lcom/ts/main/common/ITsCommon;->SendMcuKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Lcom/ts/tsclock/AppListActivity;->bindCommService()V

    goto :goto_0

    .line 223
    :cond_3
    const v3, 0x7f08000b

    if-ne v1, v3, :cond_5

    .line 224
    iget-object v3, p0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    if-eqz v3, :cond_4

    .line 226
    :try_start_1
    iget-object v3, p0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v3}, Lcom/ts/main/common/ITsCommon;->VolInc()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 227
    :catch_1
    move-exception v0

    .line 228
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    invoke-direct {p0}, Lcom/ts/tsclock/AppListActivity;->bindCommService()V

    goto :goto_0

    .line 233
    :cond_5
    const v3, 0x7f08000c

    if-ne v1, v3, :cond_7

    .line 234
    iget-object v3, p0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    if-eqz v3, :cond_6

    .line 236
    :try_start_2
    iget-object v3, p0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v3}, Lcom/ts/main/common/ITsCommon;->VolDec()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 237
    :catch_2
    move-exception v0

    .line 238
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    invoke-direct {p0}, Lcom/ts/tsclock/AppListActivity;->bindCommService()V

    goto :goto_0

    .line 243
    :cond_7
    const v3, 0x7f08000d

    if-ne v1, v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    if-eqz v3, :cond_8

    .line 246
    :try_start_3
    iget-object v3, p0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v3}, Lcom/ts/main/common/ITsCommon;->BklTurn()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 247
    :catch_3
    move-exception v0

    .line 248
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    invoke-direct {p0}, Lcom/ts/tsclock/AppListActivity;->bindCommService()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/AppListActivity;->requestWindowFeature(I)Z

    .line 82
    invoke-virtual {p0}, Lcom/ts/tsclock/AppListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 83
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/AppListActivity;->setContentView(I)V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/AppListActivity;->mHandler:Landroid/os/Handler;

    .line 85
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ts/tsclock/AppListActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    invoke-virtual {p0}, Lcom/ts/tsclock/AppListActivity;->initView()V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity;->sconn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/ts/tsclock/AppListActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/ts/tsclock/AppListActivity;->bindCommService()V

    .line 94
    return-void
.end method

.method startScreenProtect()V
    .locals 3

    .prologue
    .line 105
    const-string v1, "test"

    const-string v2, "startScreenProtect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/ts/tsclock/ScreenProtectActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/ts/tsclock/AppListActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
