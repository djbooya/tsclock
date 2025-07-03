.class public Lcom/ts/tsclock/CustomViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CustomViewPager.java"


# instance fields
.field startX:F

.field startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 18
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/ts/tsclock/CustomViewPager;->startX:F

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/ts/tsclock/CustomViewPager;->startY:F

    .line 23
    invoke-virtual {p0}, Lcom/ts/tsclock/CustomViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 37
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 24
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/ts/tsclock/CustomViewPager;->startX:F

    sub-float v1, v3, v4

    .line 27
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/ts/tsclock/CustomViewPager;->startY:F

    sub-float v2, v3, v4

    .line 29
    .local v2, "deltaY":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/ts/tsclock/CustomViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/ts/tsclock/CustomViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
