.class Lcom/ts/tsclock/ScreenProtectActivity$3;
.super Ljava/lang/Object;
.source "ScreenProtectActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/ScreenProtectActivity;->startAnimatorPath(Landroid/view/View;Ljava/lang/String;Lcom/ts/tsclock/AnimatorPath/AnimatorPath;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/ScreenProtectActivity;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/ScreenProtectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/ScreenProtectActivity$3;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 139
    .local v0, "animatedValue":F
    iget-object v1, p0, Lcom/ts/tsclock/ScreenProtectActivity$3;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    iget-boolean v1, v1, Lcom/ts/tsclock/ScreenProtectActivity;->isAnimation:Z

    if-eqz v1, :cond_0

    .line 140
    const/high16 v1, 0x3f6a0000    # 0.9140625f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/ts/tsclock/ScreenProtectActivity$3;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/ts/tsclock/ScreenProtectActivity;->isAnimation:Z

    .line 142
    iget-object v1, p0, Lcom/ts/tsclock/ScreenProtectActivity$3;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    invoke-virtual {v1}, Lcom/ts/tsclock/ScreenProtectActivity;->sendEnter()V

    .line 145
    :cond_0
    return-void
.end method
