.class public Lcom/ts/tsclock/AnimatorPath/PathEvaluator;
.super Ljava/lang/Object;
.source "PathEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/ts/tsclock/AnimatorPath/PathPoint;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/ts/tsclock/AnimatorPath/PathPoint;Lcom/ts/tsclock/AnimatorPath/PathPoint;)Lcom/ts/tsclock/AnimatorPath/PathPoint;
    .locals 7
    .param p1, "t"    # F
    .param p2, "startValue"    # Lcom/ts/tsclock/AnimatorPath/PathPoint;
    .param p3, "endValue"    # Lcom/ts/tsclock/AnimatorPath/PathPoint;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x40400000    # 3.0f

    .line 22
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, p1

    .line 24
    .local v0, "oneMiunsT":F
    iget v3, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mOperation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 25
    iget v3, p2, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    iget v4, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl0X:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, p1

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl1X:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 26
    .local v1, "x":F
    iget v3, p2, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    iget v4, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl0Y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, p1

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl1Y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 40
    .local v2, "y":F
    :goto_0
    invoke-static {v1, v2}, Lcom/ts/tsclock/AnimatorPath/PathPoint;->moveTo(FF)Lcom/ts/tsclock/AnimatorPath/PathPoint;

    move-result-object v3

    return-object v3

    .line 28
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    iget v3, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mOperation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 29
    mul-float v3, v0, v0

    iget v4, p2, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    mul-float/2addr v3, v4

    mul-float v4, v6, p1

    mul-float/2addr v4, v0

    iget v5, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl0X:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v4, p1, p1

    iget v5, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 30
    .restart local v1    # "x":F
    mul-float v3, v0, v0

    iget v4, p2, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    mul-float/2addr v3, v4

    mul-float v4, v6, p1

    mul-float/2addr v4, v0

    iget v5, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl0Y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v4, p1, p1

    iget v5, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 32
    .restart local v2    # "y":F
    goto :goto_0

    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    iget v3, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mOperation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 34
    iget v3, p2, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    iget v4, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    iget v5, p2, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 35
    .restart local v1    # "x":F
    iget v3, p2, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    iget v4, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    iget v5, p2, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 36
    .restart local v2    # "y":F
    goto :goto_0

    .line 37
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_2
    iget v1, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    .line 38
    .restart local v1    # "x":F
    iget v2, p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    .restart local v2    # "y":F
    goto :goto_0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lcom/ts/tsclock/AnimatorPath/PathPoint;

    check-cast p3, Lcom/ts/tsclock/AnimatorPath/PathPoint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ts/tsclock/AnimatorPath/PathEvaluator;->evaluate(FLcom/ts/tsclock/AnimatorPath/PathPoint;Lcom/ts/tsclock/AnimatorPath/PathPoint;)Lcom/ts/tsclock/AnimatorPath/PathPoint;

    move-result-object v0

    return-object v0
.end method
