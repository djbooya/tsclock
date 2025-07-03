.class Lcom/ts/tsclock/ViewPager1$3;
.super Ljava/lang/Object;
.source "ViewPager1.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/ViewPager1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/ViewPager1;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/ViewPager1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/ViewPager1$3;->this$0:Lcom/ts/tsclock/ViewPager1;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1$3;->this$0:Lcom/ts/tsclock/ViewPager1;

    invoke-static {p2}, Lcom/ts/main/common/ITsCommon$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ts/main/common/ITsCommon;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ts/tsclock/ViewPager1;->access$6(Lcom/ts/tsclock/ViewPager1;Lcom/ts/main/common/ITsCommon;)V

    .line 428
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1$3;->this$0:Lcom/ts/tsclock/ViewPager1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ts/tsclock/ViewPager1;->access$6(Lcom/ts/tsclock/ViewPager1;Lcom/ts/main/common/ITsCommon;)V

    .line 423
    return-void
.end method
