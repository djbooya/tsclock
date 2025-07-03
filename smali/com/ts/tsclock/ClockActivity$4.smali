.class Lcom/ts/tsclock/ClockActivity$4;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Lcom/ts/tsclock/FloatWindow$OnClickBackHome;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/ClockActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/ClockActivity;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/ClockActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/ClockActivity$4;->this$0:Lcom/ts/tsclock/ClockActivity;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackHome()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ts/tsclock/ClockActivity$4;->this$0:Lcom/ts/tsclock/ClockActivity;

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mVp1:Lcom/ts/tsclock/ViewPager1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/ViewPager1;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/ts/tsclock/ClockActivity$4;->this$0:Lcom/ts/tsclock/ClockActivity;

    iget-object v0, v0, Lcom/ts/tsclock/ClockActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 231
    return-void
.end method
