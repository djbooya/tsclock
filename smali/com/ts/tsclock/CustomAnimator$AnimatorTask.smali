.class Lcom/ts/tsclock/CustomAnimator$AnimatorTask;
.super Ljava/lang/Object;
.source "CustomAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/CustomAnimator;
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

.field final synthetic this$0:Lcom/ts/tsclock/CustomAnimator;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/CustomAnimator;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mPerValue:F

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mDuration:I

    return-void
.end method


# virtual methods
.method public getCurrentValue()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    return v0
.end method

.method public isAnimatorRunning()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->isAnimatorRunning:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 91
    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mEndValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mStartValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 92
    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mPerValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    .line 93
    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mEndValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mEndValue:F

    :goto_0
    iput v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    .line 99
    :goto_1
    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mEndValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->isAnimatorRunning:Z

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomAnimator;

    invoke-static {v0}, Lcom/ts/tsclock/CustomAnimator;->access$0(Lcom/ts/tsclock/CustomAnimator;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 105
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomAnimator;

    invoke-static {v0}, Lcom/ts/tsclock/CustomAnimator;->access$1(Lcom/ts/tsclock/CustomAnimator;)Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomAnimator;

    invoke-static {v0}, Lcom/ts/tsclock/CustomAnimator;->access$1(Lcom/ts/tsclock/CustomAnimator;)Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;

    move-result-object v0

    iget v1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    invoke-interface {v0, v1}, Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;->onValueUpdated(F)V

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->isAnimatorRunning:Z

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->this$0:Lcom/ts/tsclock/CustomAnimator;

    invoke-static {v0}, Lcom/ts/tsclock/CustomAnimator;->access$0(Lcom/ts/tsclock/CustomAnimator;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_2
    return-void

    .line 93
    :cond_3
    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    goto :goto_0

    .line 95
    :cond_4
    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mPerValue:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    .line 96
    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    iget v1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mEndValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mEndValue:F

    :goto_2
    iput v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    goto :goto_2
.end method

.method public setAnimatorRunning(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->isAnimatorRunning:Z

    .line 79
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mDuration:I

    .line 71
    return-void
.end method

.method public setPerValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mPerValue:F

    .line 83
    return-void
.end method

.method public setValue(FF)V
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mStartValue:F

    iput p1, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mCurrentValue:F

    .line 66
    iput p2, p0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->mEndValue:F

    .line 67
    return-void
.end method
