#Лосев А.И.
#Регион 36 (Воронежская обл.)
#рассчитайте урожайность пшеницы в 2010 году, 
#взяв для рассчета средние суммы активных температур за предыдущие 3 года, 
#с 15 ближайших метеостанций.
library (tidyverse);library (rnoaa)
station_data = read.csv("station_data20.csv")
voronezh = data.frame(id = "Voronezh", latitude = 51.661535,  longitude = 39.200287)
vor_around = meteo_nearby_stations(lat_lon_df = voronezh, station_data = station_data, limit = 15, var = c("TAVG"), year_min = 2007, year_max = 2009)
vor_id = vor_around[["Voronezh"]][["id"]][1]
summary(lipetsk_id)
vor_table = data.frame (vor_around)
summary (lipetsk_table)
all_pre_vor = data.frame()
all_vor_meteodata = data.frame()
for(i in 1:15)
{
  all_pre_vor=meteo_tidy_ghcnd(stationid =vor_id, var="TAVG", date_min = "2007-01-01", date_max = "2009-12-31") 
  all_vor_meteodata=rbind(all_vor_meteodata, all_pre_vor)
}
write.csv (all_vor_meteodata,"all_vor_meteodata.csv")