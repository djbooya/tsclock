.class public Lcom/ts/tsclock/IconAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/tsclock/IconAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private TOTAL_ITEM:I

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/tsclock/IconAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/tsclock/IconAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/IconAdapter;->mLists:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ts/tsclock/IconAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIconName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/ts/tsclock/IconAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 105
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/ts/tsclock/IconAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "IconName":Ljava/lang/String;
    iget-object v3, p0, Lcom/ts/tsclock/IconAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 107
    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 40
    if-gez p1, :cond_0

    .line 78
    :goto_0
    return-object v8

    .line 43
    :cond_0
    const/4 v4, 0x0

    .line 44
    .local v4, "holder":Lcom/ts/tsclock/IconAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 45
    new-instance v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;

    .end local v4    # "holder":Lcom/ts/tsclock/IconAdapter$ViewHolder;
    invoke-direct {v4, p0}, Lcom/ts/tsclock/IconAdapter$ViewHolder;-><init>(Lcom/ts/tsclock/IconAdapter;)V

    .line 46
    .restart local v4    # "holder":Lcom/ts/tsclock/IconAdapter$ViewHolder;
    iget-object v9, p0, Lcom/ts/tsclock/IconAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030005

    invoke-virtual {v9, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    const v8, 0x7f08001e

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 48
    const v8, 0x7f08001f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_1
    :try_start_0
    iget-object v8, p0, Lcom/ts/tsclock/IconAdapter;->mLists:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v7, v8, v9

    .line 56
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/ts/tsclock/IconAdapter;->mLists:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v0, v8, v9

    .line 57
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/ts/tsclock/IconAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 60
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    iget-object v8, p0, Lcom/ts/tsclock/IconAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "iconName":Ljava/lang/String;
    iget-object v8, p0, Lcom/ts/tsclock/IconAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 62
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v8, "com.ts.dvdplayer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "com.ts.dvdplayer.USBActivity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 63
    iget-object v8, v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const v9, 0x7f020027

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    :goto_2
    iget-object v8, v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconName":Ljava/lang/String;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_3
    move-object v8, p2

    .line 78
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "holder":Lcom/ts/tsclock/IconAdapter$ViewHolder;
    check-cast v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;

    .restart local v4    # "holder":Lcom/ts/tsclock/IconAdapter$ViewHolder;
    goto :goto_1

    .line 64
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "iconName":Ljava/lang/String;
    .restart local v6    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "com.ts.dvdplayer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "com.ts.dvdplayer.SDActivity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 65
    iget-object v8, v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const v9, 0x7f020026

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 74
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconName":Ljava/lang/String;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 66
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "iconName":Ljava/lang/String;
    .restart local v6    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v8, "com.ts.filemanager"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 67
    iget-object v8, v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const v9, 0x7f020043

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 68
    :cond_4
    const-string v8, "com.spotify.music"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 69
    iget-object v8, v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const v9, 0x7f020045

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 71
    :cond_5
    iget-object v8, v4, Lcom/ts/tsclock/IconAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ts/tsclock/IconAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    iget-object v0, p0, Lcom/ts/tsclock/IconAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p0}, Lcom/ts/tsclock/IconAdapter;->notifyDataSetChanged()V

    .line 36
    return-void
.end method
