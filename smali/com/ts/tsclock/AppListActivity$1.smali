.class Lcom/ts/tsclock/AppListActivity$1;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/AppListActivity;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/AppListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/AppListActivity$1;->this$0:Lcom/ts/tsclock/AppListActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity$1;->this$0:Lcom/ts/tsclock/AppListActivity;

    invoke-static {v0}, Lcom/ts/tsclock/AppListActivity;->access$0(Lcom/ts/tsclock/AppListActivity;)V

    .line 73
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity$1;->this$0:Lcom/ts/tsclock/AppListActivity;

    invoke-static {v0}, Lcom/ts/tsclock/AppListActivity;->access$1(Lcom/ts/tsclock/AppListActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method
