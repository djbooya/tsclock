.class public Lcom/ts/tsclock/CustomAnimator;
.super Ljava/lang/Object;
.source "CustomAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/tsclock/CustomAnimator$AnimatorTask;,
        Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;

.field private mTargetView:Landroid/view/View;

.field private mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ts/tsclock/CustomAnimator;->mTargetView:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    invoke-direct {v0, p0}, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;-><init>(Lcom/ts/tsclock/CustomAnimator;)V

    iput-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/ts/tsclock/CustomAnimator;)Landroid/view/View;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/tsclock/CustomAnimator;)Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mListener:Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->setAnimatorRunning(Z)V

    .line 42
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 43
    return-void
.end method

.method public getCurrentValue()F
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    invoke-virtual {v0}, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->getCurrentValue()F

    move-result v0

    return v0
.end method

.method public isAnimatorRunning()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    invoke-virtual {v0}, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->isAnimatorRunning()Z

    move-result v0

    return v0
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    invoke-virtual {v0, p1}, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->setDuration(I)V

    .line 26
    return-void
.end method

.method public setOnValueUpdatedListener(Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ts/tsclock/CustomAnimator;->mListener:Lcom/ts/tsclock/CustomAnimator$OnValueUpdatedListener;

    .line 52
    return-void
.end method

.method public setPerValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    invoke-virtual {v0, p1}, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->setPerValue(F)V

    .line 30
    return-void
.end method

.method public setValue(FF)V
    .locals 1
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    invoke-virtual {v0, p1, p2}, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->setValue(FF)V

    .line 22
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/tsclock/CustomAnimator$AnimatorTask;->setAnimatorRunning(Z)V

    .line 47
    iget-object v0, p0, Lcom/ts/tsclock/CustomAnimator;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/ts/tsclock/CustomAnimator;->mTask:Lcom/ts/tsclock/CustomAnimator$AnimatorTask;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method
