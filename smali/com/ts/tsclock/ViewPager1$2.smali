.class Lcom/ts/tsclock/ViewPager1$2;
.super Ljava/lang/Object;
.source "ViewPager1.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/ts/tsclock/ViewPager1$2;->this$0:Lcom/ts/tsclock/ViewPager1;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUpdate()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1$2;->this$0:Lcom/ts/tsclock/ViewPager1;

    invoke-static {v0}, Lcom/ts/tsclock/ViewPager1;->access$1(Lcom/ts/tsclock/ViewPager1;)V

    .line 207
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1$2;->this$0:Lcom/ts/tsclock/ViewPager1;

    invoke-static {v0}, Lcom/ts/tsclock/ViewPager1;->access$2(Lcom/ts/tsclock/ViewPager1;)Lcom/ts/main/common/ITsCommon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1$2;->this$0:Lcom/ts/tsclock/ViewPager1;

    invoke-static {v0}, Lcom/ts/tsclock/ViewPager1;->access$3(Lcom/ts/tsclock/ViewPager1;)V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1$2;->this$0:Lcom/ts/tsclock/ViewPager1;

    invoke-static {v0}, Lcom/ts/tsclock/ViewPager1;->access$4(Lcom/ts/tsclock/ViewPager1;)V

    .line 213
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1$2;->this$0:Lcom/ts/tsclock/ViewPager1;

    invoke-static {v0}, Lcom/ts/tsclock/ViewPager1;->access$5(Lcom/ts/tsclock/ViewPager1;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/ts/tsclock/ViewPager1$2;->checkUpdate()V

    .line 201
    iget-object v0, p0, Lcom/ts/tsclock/ViewPager1$2;->this$0:Lcom/ts/tsclock/ViewPager1;

    iget-object v1, p0, Lcom/ts/tsclock/ViewPager1$2;->this$0:Lcom/ts/tsclock/ViewPager1;

    invoke-static {v1}, Lcom/ts/tsclock/ViewPager1;->access$0(Lcom/ts/tsclock/ViewPager1;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/tsclock/ViewPager1;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void
.end method
