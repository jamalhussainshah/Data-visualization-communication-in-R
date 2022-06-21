
# Line chart
library(googleVis)
demo(googleVis)
df=data.frame(country=c("US", "GB", "BR"), 
              val1=c(10,13,14), 
              val2=c(23,12,32))

Line <- gvisLineChart(df)
plot(Line)

# Stepped Area chart
SteppedArea <- gvisSteppedAreaChart(df, xvar="country", 
                                    yvar=c("val1", "val2"),
                                    options=list(isStacked=TRUE))
plot(SteppedArea)



# Combo chart
Combo <- gvisComboChart(df, xvar="country",
                        yvar=c("val1", "val2"),
                        options=list(seriesType="bars",
                                     series='{1: {type:"line"}}'))
plot(Combo)



# Bubble chart
Bubble <- gvisBubbleChart(Fruits, idvar="Fruit", 
                          xvar="Sales", yvar="Expenses",
                          colorvar="Year", sizevar="Profit",
                          options=list(
                            hAxis='{minValue:75, maxValue:125}'))
plot(Bubble)


# Org chart
Org <- gvisOrgChart(Regions, 
                    options=list(width=600, height=250,
                                 size='large', allowCollapse=TRUE))
plot(Org)



#Sankey chart

datTL <- data.frame(Position=c(rep("President", 3), rep("Vice", 3)),
                    Name=c("Washington", "Adams", "Jefferson",
                           "Adams", "Jefferson", "Burr"),
                    start=as.Date(x=rep(c("1789-03-29", "1797-02-03", 
                                          "1801-02-03"),2)),
                    end=as.Date(x=rep(c("1797-02-03", "1801-02-03", 
                                        "1809-02-03"),2)))
# 
Timeline <- gvisTimeline(data=datTL, 
                         rowlabel="Name",
                         barlabel="Position",
                         start="start", 
                         end="end",
                         options=list(timeline="{groupByRowLabel:false}",
                                      backgroundColor='#ffd', 
                                      height=350,
                                      colors="['#cbb69d', '#603913', '#c69c6e']"))
plot(Timeline)