.class Lcom/ts/tsclock/AppListActivity$3;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/AppListActivity;->initView()V
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
    iput-object p1, p0, Lcom/ts/tsclock/AppListActivity$3;->this$0:Lcom/ts/tsclock/AppListActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity$3;->this$0:Lcom/ts/tsclock/AppListActivity;

    invoke-virtual {v0}, Lcom/ts/tsclock/AppListActivity;->startScreenProtect()V

    .line 120
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity$3;->this$0:Lcom/ts/tsclock/AppListActivity;

    invoke-virtual {v0}, Lcom/ts/tsclock/AppListActivity;->finish()V

    .line 121
    return-void
.end method
