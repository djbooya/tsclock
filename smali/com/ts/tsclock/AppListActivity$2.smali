.class Lcom/ts/tsclock/AppListActivity$2;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/ts/tsclock/AppListActivity$2;->this$0:Lcom/ts/tsclock/AppListActivity;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity$2;->this$0:Lcom/ts/tsclock/AppListActivity;

    invoke-static {p2}, Lcom/ts/main/common/ITsCommon$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ts/main/common/ITsCommon;

    move-result-object v1

    iput-object v1, v0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    .line 437
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/ts/tsclock/AppListActivity$2;->this$0:Lcom/ts/tsclock/AppListActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ts/tsclock/AppListActivity;->m_CommService:Lcom/ts/main/common/ITsCommon;

    .line 432
    return-void
.end method
