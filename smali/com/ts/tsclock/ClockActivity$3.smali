.class Lcom/ts/tsclock/ClockActivity$3;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/ClockActivity;->updateAppData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/ClockActivity;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/ts/tsclock/ClockActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/ClockActivity$3;->this$0:Lcom/ts/tsclock/ClockActivity;

    iput p2, p0, Lcom/ts/tsclock/ClockActivity$3;->val$index:I

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 178
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/ts/tsclock/ClockActivity$3;->this$0:Lcom/ts/tsclock/ClockActivity;

    iget-object v3, v3, Lcom/ts/tsclock/ClockActivity;->mIconAdapters:[Lcom/ts/tsclock/IconAdapter;

    iget v4, p0, Lcom/ts/tsclock/ClockActivity$3;->val$index:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/ts/tsclock/IconAdapter;->mLists:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 179
    .local v2, "strings":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 180
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 181
    .local v0, "className":Ljava/lang/String;
    const-string v3, "haha"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pacakgeName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v3, "haha"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "className = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/ts/tsclock/ClockActivity$3;->this$0:Lcom/ts/tsclock/ClockActivity;

    invoke-static {v3, v1, v0}, Lcom/ts/tsclock/ClockActivity;->access$2(Lcom/ts/tsclock/ClockActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method
