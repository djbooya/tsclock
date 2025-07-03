.class Lcom/ts/tsclock/AppListActivity$4;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/ts/tsclock/AppListActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/AppListActivity$4;->this$0:Lcom/ts/tsclock/AppListActivity;

    iput p2, p0, Lcom/ts/tsclock/AppListActivity$4;->val$index:I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/ts/tsclock/AppListActivity$4;->this$0:Lcom/ts/tsclock/AppListActivity;

    iget-object v1, v1, Lcom/ts/tsclock/AppListActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    iget v2, p0, Lcom/ts/tsclock/AppListActivity$4;->val$index:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/ts/tsclock/IconAdapter;->mLists:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 162
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "haha"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pacakgeName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/ts/tsclock/AppListActivity$4;->this$0:Lcom/ts/tsclock/AppListActivity;

    invoke-static {v1, v0}, Lcom/ts/tsclock/AppListActivity;->access$2(Lcom/ts/tsclock/AppListActivity;Ljava/lang/String;)V

    .line 164
    return-void
.end method
