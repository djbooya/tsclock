.class Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;
.super Ljava/lang/Object;
.source "CustomDirectionAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/CustomDirectionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimatorTask"
.end annotation


# instance fields
.field private isAnimatorRunning:Z

.field private mCurrentValue:F

.field private mDuration:I

.field private mEndValue:F

.field private mPerValue:F

.field private mStartValue:F

.field final synthetic this$0:Lcom/ts/tsclock/CustomDirectionAnimator;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/CustomDirectionAnimator;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mPerValue:F

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mDuration:I

    return-void
.end method


# virtual methods
.method public getCurrentValue()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    return v0
.end method

.method public isAnimatorRunning()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->isAnimatorRunning:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x43340000    # 180.0f

    .line 90
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mEndValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mStartValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 91
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mStartValue:F

    add-float/2addr v0, v2

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mEndValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 92
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mPerValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    .line 104
    :goto_0
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    rem-float/2addr v0, v3

    iput v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    .line 106
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 107
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    .line 110
    :cond_0
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mEndValue:F

    sub-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->isAnimatorRunning:Z

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-static {v0}, Lcom/ts/tsclock/CustomDirectionAnimator;->access$0(Lcom/ts/tsclock/CustomDirectionAnimator;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 116
    iget-object v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-static {v0}, Lcom/ts/tsclock/CustomDirectionAnimator;->access$1(Lcom/ts/tsclock/CustomDirectionAnimator;)Lcom/ts/tsclock/CustomDirectionAnimator$OnValueUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-static {v0}, Lcom/ts/tsclock/CustomDirectionAnimator;->access$1(Lcom/ts/tsclock/CustomDirectionAnimator;)Lcom/ts/tsclock/CustomDirectionAnimator$OnValueUpdatedListener;

    move-result-object v0

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    invoke-interface {v0, v1}, Lcom/ts/tsclock/CustomDirectionAnimator$OnValueUpdatedListener;->onValueUpdated(F)V

    .line 119
    :cond_2
    iget-boolean v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->isAnimatorRunning:Z

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomDirectionAnimator;

    invoke-static {v0}, Lcom/ts/tsclock/CustomDirectionAnimator;->access$0(Lcom/ts/tsclock/CustomDirectionAnimator;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_3
    return-void

    .line 94
    :cond_4
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mPerValue:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    goto :goto_0

    .line 97
    :cond_5
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mEndValue:F

    add-float/2addr v0, v2

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mStartValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 98
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mPerValue:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    goto :goto_0

    .line 100
    :cond_6
    iget v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mPerValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    goto :goto_0
.end method

.method public setAnimatorRunning(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->isAnimatorRunning:Z

    .line 78
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mDuration:I

    .line 70
    return-void
.end method

.method public setPerValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mPerValue:F

    .line 82
    return-void
.end method

.method public setValue(FF)V
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mStartValue:F

    iput p1, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mCurrentValue:F

    .line 65
    iput p2, p0, Lcom/ts/tsclock/CustomDirectionAnimator$AnimatorTask;->mEndValue:F

    .line 66
    return-void
.end method
