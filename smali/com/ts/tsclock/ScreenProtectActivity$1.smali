.class Lcom/ts/tsclock/ScreenProtectActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenProtectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/ScreenProtectActivity;
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
    iput-object p1, p0, Lcom/ts/tsclock/ScreenProtectActivity$1;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v1, "com.ts.action.ACTION_EXIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/ts/tsclock/ScreenProtectActivity$1;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    iget-object v2, p0, Lcom/ts/tsclock/ScreenProtectActivity$1;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    iget-object v2, v2, Lcom/ts/tsclock/ScreenProtectActivity;->mIvShow:Landroid/widget/ImageView;

    const-string v3, "fab"

    iget-object v4, p0, Lcom/ts/tsclock/ScreenProtectActivity$1;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    invoke-static {v4}, Lcom/ts/tsclock/ScreenProtectActivity;->access$0(Lcom/ts/tsclock/ScreenProtectActivity;)Lcom/ts/tsclock/AnimatorPath/AnimatorPath;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/ts/tsclock/ScreenProtectActivity;->access$1(Lcom/ts/tsclock/ScreenProtectActivity;Landroid/view/View;Ljava/lang/String;Lcom/ts/tsclock/AnimatorPath/AnimatorPath;)V

    .line 55
    :cond_0
    return-void
.end method
