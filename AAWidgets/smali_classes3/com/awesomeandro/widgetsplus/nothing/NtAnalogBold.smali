.class public Lcom/awesomeandro/widgetsplus/nothing/NtAnalogBold;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nt_analog_bold_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "btc"

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtStyle;->style(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/awesomeandro/widgetsplus/nothing/NtAnalogBold;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/awesomeandro/widgetsplus/nothing/NtAnalogBold;->openClockOnTap(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-object p0
.end method
