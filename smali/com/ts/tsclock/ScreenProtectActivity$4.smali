.class Lcom/ts/tsclock/ScreenProtectActivity$4;
.super Ljava/lang/Object;
.source "ScreenProtectActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    iput-object p1, p0, Lcom/ts/tsclock/ScreenProtectActivity$4;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 171
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 162
    const-string v0, "ScreenProtectActivity"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity$4;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    iget-object v0, v0, Lcom/ts/tsclock/ScreenProtectActivity;->mIvShow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 164
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity$4;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ts/tsclock/ScreenProtectActivity;->isAnimation:Z

    .line 165
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 158
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 153
    return-void
.end method
