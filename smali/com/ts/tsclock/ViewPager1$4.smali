.class Lcom/ts/tsclock/ViewPager1$4;
.super Ljava/lang/Object;
.source "ViewPager1.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/ViewPager1;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/ViewPager1;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/ViewPager1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/ViewPager1$4;->this$0:Lcom/ts/tsclock/ViewPager1;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1$4;->this$0:Lcom/ts/tsclock/ViewPager1;

    iget-object v2, p0, Lcom/ts/tsclock/ViewPager1$4;->this$0:Lcom/ts/tsclock/ViewPager1;

    invoke-virtual {v2}, Lcom/ts/tsclock/ViewPager1;->getSupportChangeLogo()I

    move-result v2

    iput v2, v1, Lcom/ts/tsclock/ViewPager1;->mIsSupportChangeLogo:I

    .line 172
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1$4;->this$0:Lcom/ts/tsclock/ViewPager1;

    iget v1, v1, Lcom/ts/tsclock/ViewPager1;->mIsSupportChangeLogo:I

    if-ne v1, v4, :cond_0

    .line 173
    invoke-static {}, Lcom/ts/tsclock/TsPrefrence;->getLogoImg()I

    move-result v0

    .line 174
    .local v0, "logoImg":I
    if-nez v0, :cond_1

    .line 175
    invoke-static {v4}, Lcom/ts/tsclock/TsPrefrence;->setLogoImg(I)V

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1$4;->this$0:Lcom/ts/tsclock/ViewPager1;

    invoke-virtual {v1}, Lcom/ts/tsclock/ViewPager1;->updateLogo()V

    .line 181
    .end local v0    # "logoImg":I
    :cond_0
    return v3

    .line 177
    .restart local v0    # "logoImg":I
    :cond_1
    invoke-static {v3}, Lcom/ts/tsclock/TsPrefrence;->setLogoImg(I)V

    goto :goto_0
.end method
