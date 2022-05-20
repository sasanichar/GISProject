library(tidyverse)
library(plotly)
library(tibble)

url = "https://raw.githubusercontent.com/sasanichar/GISProject/main/BronxBusSpeeds_LclvSbs.csv"


df=read.csv(url, fileEncoding = 'UTF-8-BOM', stringsAsFactors = F)

df=df %>%
  arrange(month)

p=plot_ly()

p=p %>%
  add_trace(type="scatter", mode="lines", 
            x=df[["month"]], y=df[["lcl_average_speed"]], 
            name = "Local",
            color = "#ff9e4a",
            hovertemplate="%{y:,.0f}") %>%
  
  add_trace(type="scatter", mode="lines", 
            x=df[["month"]], y=df[["sbs_average_speed"]], 
            name = "SBS", 
            color = "#729ece",
            hovertemplate="%{y:,.0f}") %>%
  
  layout(title = "<b>Local vs SBS Bus Speeds in the Bronx</b>", 
         xaxis=list(title="<b>Date</b>"), 
         yaxis=list(title="<b>Speed (mph)</b>")) %>%
  
  layout(margin = list(b=160), 
         annotations=list(x=1, y=-0.2, 
                          text= "Data Source: <a href= 'http://busdashboard.mta.info/' target = 'blank'>MTA</a>", 
                          showarrow=F, 
                          xref="paper", yref="paper", 
                          xanchor="right", yanchor="top", 
                          xshift=0, yshift=0, 
                          font=list(size=12, color="grey"))) %>%
  
  config(displayModeBar = F)

p

path = "E:/Advanced_Geoinformatics/SemesterProject/Web/Chart"

htmlwidgets::saveWidget(p,paste0(path,"SBSvsLocal.html"))
