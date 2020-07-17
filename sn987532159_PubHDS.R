uk_daily <- read.csv("~/Desktop/PubHDS/Data/United_Kingdom/deaths.csv")
#View(uk_daily)
selected_uk_daily <- uk_daily[66:112 ,]
selected_uk_daily$date_reported <- substr(selected_uk_daily$date_reported, 1, 10)
selected_uk_daily$data_type_name <- "projected daily death"
selected_uk_daily$country <- "The United Kingdom"
selected_uk_daily$population <- 67886011
selected_uk_daily$predicted_per100000_daily_deaths <- (selected_uk_daily$mean / selected_uk_daily$population)*100000
#View(selected_uk_daily)
uk_cumulative <- read.csv("~/Desktop/PubHDS/Data/United_Kingdom/total_death.csv")
#View(uk_cumulative)
selected_uk_cumulative <- uk_cumulative[66:112 ,]
selected_uk_cumulative$date_reported <- substr(selected_uk_cumulative$date_reported, 1, 10)
selected_uk_cumulative$data_type_name <- "projected cumulative death"
selected_uk_cumulative$country <- "The United Kingdom"
#View(selected_uk_cumulative)

italy_daily <- read.csv("~/Desktop/PubHDS/Data/Italy/deaths.csv")
#View(italy_daily)
selected_italy_daily <- italy_daily[66:112 ,]
selected_italy_daily$date_reported <- substr(selected_italy_daily$date_reported, 1, 10)
selected_italy_daily$data_type_name <- "projected daily death"
selected_italy_daily$country <- "Italy"
selected_italy_daily$population <- 60461826
selected_italy_daily$predicted_per100000_daily_deaths <- (selected_italy_daily$mean / selected_italy_daily$population)*100000
#View(selected_italy_daily)
italy_cumulative <- read.csv("~/Desktop/PubHDS/Data/Italy/total_death.csv")
#View(italy_cumulative)
selected_italy_cumulative <- italy_cumulative[66:112 ,]
selected_italy_cumulative$date_reported <- substr(selected_italy_cumulative$date_reported, 1, 10)
selected_italy_cumulative$data_type_name <- "projected cumulative death"
selected_italy_cumulative$country <- "Italy"
#View(selected_italy_cumulative)

france_daily <- read.csv("~/Desktop/PubHDS/Data/France/deaths.csv")
#View(france_daily)
selected_france_daily <- france_daily[66:112 ,]
selected_france_daily$date_reported <- substr(selected_france_daily$date_reported, 1, 10)
selected_france_daily$data_type_name <- "projected daily death"
selected_france_daily$country <- "France"
selected_france_daily$population <- 65273511
selected_france_daily$predicted_per100000_daily_deaths <- (selected_france_daily$mean / selected_france_daily$population)*100000
#View(selected_france_daily)
france_cumulative <- read.csv("~/Desktop/PubHDS/Data/France/total_death.csv")
#View(france_cumulative)
selected_france_cumulative <- france_cumulative[66:112 ,]
selected_france_cumulative$date_reported <- substr(selected_france_cumulative$date_reported, 1, 10)
selected_france_cumulative$data_type_name <- "projected cumulative death"
selected_france_cumulative$country <- "France"
#View(selected_france_cumulative)

spain_daily <- read.csv("~/Desktop/PubHDS/Data/Spain/deaths.csv")
#View(spain_daily)
selected_spain_daily <- spain_daily[66:112 ,]
selected_spain_daily$date_reported <- substr(selected_spain_daily$date_reported, 1, 10)
selected_spain_daily$data_type_name <- "projected daily death"
selected_spain_daily$country <- "Spain"
selected_spain_daily$population <- 46754778
selected_spain_daily$predicted_per100000_daily_deaths <- (selected_spain_daily$mean / selected_spain_daily$population)*100000
#View(selected_spain_daily)
spain_cumulative <- read.csv("~/Desktop/PubHDS/Data/Spain/total_death.csv")
#View(spain_cumulative)
selected_spain_cumulative <- spain_cumulative[66:112 ,]
selected_spain_cumulative$date_reported <- substr(selected_spain_cumulative$date_reported, 1, 10)
selected_spain_cumulative$data_type_name <- "projected cumulative death"
selected_spain_cumulative$country <- "Spain"
#View(selected_spain_cumulative)

belgium_daily <- read.csv("~/Desktop/PubHDS/Data/Belgium/deaths.csv")
#View(belgium_daily)
selected_belgium_daily <- belgium_daily[66:112 ,]
selected_belgium_daily$date_reported <- substr(selected_belgium_daily$date_reported, 1, 10)
selected_belgium_daily$data_type_name <- "projected daily death"
selected_belgium_daily$country <- "Belgium"
selected_belgium_daily$population <- 11589623
selected_belgium_daily$predicted_per100000_daily_deaths <- (selected_belgium_daily$mean / selected_belgium_daily$population)*100000
#View(selected_belgium_daily)
belgium_cumulative <- read.csv("~/Desktop/PubHDS/Data/Belgium/total_death.csv")
#View(belgium_cumulative)
selected_belgium_cumulative <- belgium_cumulative[66:112 ,]
selected_belgium_cumulative$date_reported <- substr(selected_belgium_cumulative$date_reported, 1, 10)
selected_belgium_cumulative$data_type_name <- "projected cumulative death"
selected_belgium_cumulative$country = "Belgium"
#View(selected_belgium_cumulative)

germany_daily <- read.csv("~/Desktop/PubHDS/Data/Germany/deaths.csv")
#View(germany_daily)
selected_germany_daily <- germany_daily[66:112 ,]
selected_germany_daily$date_reported <- substr(selected_germany_daily$date_reported, 1, 10)
selected_germany_daily$data_type_name <- "projected daily death"
selected_germany_daily$country <- "Germany"
selected_germany_daily$population <- 83783942
selected_germany_daily$predicted_per100000_daily_deaths <- (selected_germany_daily$mean / selected_germany_daily$population)*100000
#View(selected_germany_daily)
germany_cumulative <- read.csv("~/Desktop/PubHDS/Data/Germany/total_death.csv")
#View(germany_cumulative)
selected_germany_cumulative <- germany_cumulative[66:112 ,]
selected_germany_cumulative$date_reported <- substr(selected_germany_cumulative$date_reported, 1, 10)
selected_germany_cumulative$data_type_name <- "projected cumulative death"
selected_germany_cumulative$country <- "Germany"
#View(selected_germany_cumulative)

library(dplyr)
predicted_daily_deaths <- rbind(selected_uk_daily, selected_italy_daily, selected_france_daily, selected_spain_daily, selected_belgium_daily, selected_germany_daily)
rownames(predicted_daily_deaths) <- NULL #rownames(predicted_daily_deaths) <- 1:nrow(predicted_daily_deaths)
predicted_daily_deaths <- predicted_daily_deaths %>% select (date_reported, country, data_type_name, mean, upper, lower, population, predicted_per100000_daily_deaths)
#View(predicted_daily_deaths)
predicted_cumulative_deaths <- rbind(selected_uk_cumulative, selected_italy_cumulative, selected_france_cumulative, selected_spain_cumulative, selected_belgium_cumulative, selected_germany_cumulative)
rownames(predicted_cumulative_deaths) <- NULL #rownames(predicted_cumulative_deaths) <- 1:nrow(predicted_cumulative_deaths)
predicted_cumulative_deaths <- predicted_cumulative_deaths %>% select (date_reported, country, data_type_name, mean, upper, lower)
#View(predicted_cumulative_deaths)
predicted_deaths <- data.frame(predicted_daily_deaths, predicted_cumulative_deaths)
predicted_deaths <- predicted_deaths %>% select (date_reported, country, data_type_name, mean, upper, lower, population, predicted_per100000_daily_deaths, data_type_name.1, mean.1, upper.1, lower.1)
#View(predicted_deaths)

observed_death <- read.csv("~/Desktop/PubHDS/WHO-COVID-19-global-data.csv")
#View(observed_death)

who_uk <- observed_death[observed_death$Country == "The United Kingdom", ]
rownames(who_uk) <- NULL #rownames(who_uk) <- 1:nrow(who_uk)
who_uk <- who_uk[70:116, ]
who_uk$Date_reported <- substr(who_uk$Date_reported, 1, 10)
who_uk$population <- 67886011
who_uk$observed_per100000_daily_deaths <- (who_uk$New_deaths / who_uk$population)*100000
#View(who_uk)

who_italy <- observed_death[observed_death$Country == "Italy", ]
rownames(who_italy) <- NULL #rownames(who_italy) <- 1:nrow(who_italy)
who_italy <- who_italy[72:118, ]
who_italy$Date_reported <- substr(who_italy$Date_reported, 1, 10)
who_italy$population <- 60461826
who_italy$observed_per100000_daily_deaths <- (who_italy$New_deaths / who_italy$population)*100000
#View(who_italy)

who_france <- observed_death[observed_death$Country == "France", ]
rownames(who_france) <- NULL #rownames(who_france) <- 1:nrow(who_france)
who_france <- who_france[77:123, ]
who_france$Date_reported <- substr(who_france$Date_reported, 1, 10)
who_france$population <- 65273511
who_france$observed_per100000_daily_deaths <- (who_france$New_deaths / who_france$population)*100000
#View(who_france)

who_spain <- observed_death[observed_death$Country == "Spain", ]
rownames(who_spain) <- NULL #rownames(who_spain) <- 1:nrow(who_spain)
who_spain <- who_spain[70:116, ]
who_spain$Date_reported <- substr(who_spain$Date_reported, 1, 10)
who_spain$population <- 46754778
who_spain$observed_per100000_daily_deaths <- (who_spain$New_deaths / who_spain$population)*100000
#View(who_spain)

who_belgium <- observed_death[observed_death$Country == "Belgium", ]
rownames(who_belgium) <- NULL #rownames(who_belgium) <- 1:nrow(who_belgium)
who_belgium <- who_belgium[66:112, ]
who_belgium$Date_reported <- substr(who_belgium$Date_reported, 1, 10)
who_belgium$population <-11589623
who_belgium$observed_per100000_daily_deaths <- (who_belgium$New_deaths / who_belgium$population)*100000
#View(who_belgium)

who_germany <- observed_death[observed_death$Country == "Germany", ]
rownames(who_germany) <- NULL #rownames(who_germany) <- 1:nrow(who_germany)
who_germany <- who_germany[73:119, ]
who_germany$Date_reported <- substr(who_germany$Date_reported, 1, 10)
who_germany$population <- 83783942
who_germany$observed_per100000_daily_deaths <- (who_germany$New_deaths / who_germany$population)*100000
#View(who_germany)

predicted_daily_death <- selected_uk_daily$mean + selected_italy_daily$mean + selected_france_daily$mean + selected_spain_daily$mean + selected_belgium_daily$mean + selected_germany_daily$mean
predicted_cumulative_death <- selected_uk_cumulative$mean + selected_italy_cumulative$mean + selected_france_cumulative$mean + selected_spain_cumulative$mean + selected_belgium_cumulative$mean + selected_germany_cumulative$mean
observed_daily_death <- who_uk$New_deaths + who_italy$New_deaths + who_france$New_deaths + who_spain$New_deaths + who_belgium$New_deaths + who_germany$New_deaths
observed_cumulative_death <- who_uk$Cumulative_deaths + who_italy$Cumulative_deaths + who_france$Cumulative_deaths + who_spain$Cumulative_deaths + who_belgium$Cumulative_deaths + who_germany$Cumulative_deaths
combined_predicted_observed_death <- data.frame(who_uk$Date_reported, predicted_daily_death, predicted_cumulative_death, observed_daily_death, observed_cumulative_death)
#View(combined_predicted_observed_death)

who_total <- rbind(who_uk, who_italy, who_france, who_spain, who_belgium, who_germany)
rownames(who_total) <- NULL #rownames(who_total) <- 1:nrow(who_total)
#View(who_total)

library(dplyr)
combined_data <- data.frame(who_total, predicted_deaths)
combined_data <- combined_data %>% select(Date_reported, Country, New_deaths, Cumulative_deaths, population, observed_per100000_daily_deaths, data_type_name, mean, upper, lower, predicted_per100000_daily_deaths, data_type_name.1, mean.1, upper.1, lower.1)
#View(combined_data)

library(maps)
selected_map <- map_data("world", region = c("UK", "Italy", "France","Spain", "Belgium", "Germany" ))

data(world.cities)
mycity <- subset(world.cities, (world.cities$country.etc %in% c("UK", "Italy", "France", "Spain", "Belgium", "Germany" )))

mycity$mean_long[mycity$country.etc == "UK"] <- mean(mycity$long[mycity$country.etc == "UK"])
mycity$mean_long[mycity$country.etc == "Italy"] <- mean(mycity$long[mycity$country.etc == "Italy"])
mycity$mean_long[mycity$country.etc == "France"] <- mean(mycity$long[mycity$country.etc == "France"])
mycity$mean_long[mycity$country.etc == "Spain"] <- mean(mycity$long[mycity$country.etc == "Spain"])
mycity$mean_long[mycity$country.etc == "Belgium"] <- mean(mycity$long[mycity$country.etc == "Belgium"])
mycity$mean_long[mycity$country.etc == "Germany"] <- mean(mycity$long[mycity$country.etc == "Germany"])

mycity$mean_lat[mycity$country.etc == "UK"] <- mean(mycity$lat[mycity$country.etc == "UK"])
mycity$mean_lat[mycity$country.etc == "Italy"] <- mean(mycity$lat[mycity$country.etc == "Italy"])
mycity$mean_lat[mycity$country.etc == "France"] <- mean(mycity$lat[mycity$country.etc == "France"])
mycity$mean_lat[mycity$country.etc == "Spain"] <- mean(mycity$lat[mycity$country.etc == "Spain"])
mycity$mean_lat[mycity$country.etc == "Belgium"] <- mean(mycity$lat[mycity$country.etc == "Belgium"])
mycity$mean_lat[mycity$country.etc == "Germany"] <- mean(mycity$lat[mycity$country.etc == "Germany"])

mycity <- mycity[mycity$capital == 1,]

mycity$observed_peak_daily_deaths[mycity$country.etc == "UK"] <- max(who_uk$observed_per100000_daily_deaths)
mycity$observed_peak_daily_deaths[mycity$country.etc == "Italy"] <- max(who_italy$observed_per100000_daily_deaths)
mycity$observed_peak_daily_deaths[mycity$country.etc == "France"] <- max(who_france$observed_per100000_daily_deaths)
mycity$observed_peak_daily_deaths[mycity$country.etc == "Spain"] <- max(who_spain$observed_per100000_daily_deaths)
mycity$observed_peak_daily_deaths[mycity$country.etc == "Belgium"] <- max(who_belgium$observed_per100000_daily_deaths)
mycity$observed_peak_daily_deaths[mycity$country.etc == "Germany"] <- max(who_germany$observed_per100000_daily_deaths)

mycity$observed_peak_daily_deaths_date[mycity$country.etc == "UK"] <- who_uk$Date_reported[who_uk$observed_per100000_daily_deaths == max(who_uk$observed_per100000_daily_deaths)]
mycity$observed_peak_daily_deaths_date[mycity$country.etc == "Italy"] <- who_italy$Date_reported[who_italy$observed_per100000_daily_deaths == max(who_italy$observed_per100000_daily_deaths)]
mycity$observed_peak_daily_deaths_date[mycity$country.etc == "France"] <- who_france$Date_reported[who_france$observed_per100000_daily_deaths == max(who_france$observed_per100000_daily_deaths)]
mycity$observed_peak_daily_deaths_date[mycity$country.etc == "Spain"] <- who_spain$Date_reported[who_spain$observed_per100000_daily_deaths == max(who_spain$observed_per100000_daily_deaths)]
mycity$observed_peak_daily_deaths_date[mycity$country.etc == "Belgium"] <- who_belgium$Date_reported[who_belgium$observed_per100000_daily_deaths == max(who_belgium$observed_per100000_daily_deaths)]
mycity$observed_peak_daily_deaths_date[mycity$country.etc == "Germany"] <- who_germany$Date_reported[who_germany$observed_per100000_daily_deaths == max(who_germany$observed_per100000_daily_deaths)]

mycity$predicted_peak_daily_deaths[mycity$country.etc == "UK"] <- max(selected_uk_daily$predicted_per100000_daily_deaths)
mycity$predicted_peak_daily_deaths[mycity$country.etc == "Italy"] <- max(selected_italy_daily$predicted_per100000_daily_deaths)
mycity$predicted_peak_daily_deaths[mycity$country.etc == "France"] <- max(selected_france_daily$predicted_per100000_daily_deaths)
mycity$predicted_peak_daily_deaths[mycity$country.etc == "Spain"] <- max(selected_spain_daily$predicted_per100000_daily_deaths)
mycity$predicted_peak_daily_deaths[mycity$country.etc == "Belgium"] <- max(selected_belgium_daily$predicted_per100000_daily_deaths)
mycity$predicted_peak_daily_deaths[mycity$country.etc == "Germany"] <- max(selected_germany_daily$predicted_per100000_daily_deaths)

mycity$predicted_peak_daily_deaths_date[mycity$country.etc == "UK"] <- selected_uk_daily$date_reported[selected_uk_daily$predicted_per100000_daily_deaths == max(selected_uk_daily$predicted_per100000_daily_deaths)]
mycity$predicted_peak_daily_deaths_date[mycity$country.etc == "Italy"] <- selected_italy_daily$date_reported[selected_italy_daily$predicted_per100000_daily_deaths == max(selected_italy_daily$predicted_per100000_daily_deaths)]
mycity$predicted_peak_daily_deaths_date[mycity$country.etc == "France"] <- selected_france_daily$date_reported[selected_france_daily$predicted_per100000_daily_deaths == max(selected_france_daily$predicted_per100000_daily_deaths)]
mycity$predicted_peak_daily_deaths_date[mycity$country.etc == "Spain"] <- selected_spain_daily$date_reported[selected_spain_daily$predicted_per100000_daily_deaths == max(selected_spain_daily$predicted_per100000_daily_deaths)]
mycity$predicted_peak_daily_deaths_date[mycity$country.etc == "Belgium"] <- selected_belgium_daily$date_reported[selected_belgium_daily$predicted_per100000_daily_deaths == max(selected_belgium_daily$predicted_per100000_daily_deaths)]
mycity$predicted_peak_daily_deaths_date[mycity$country.etc == "Germany"] <- selected_germany_daily$date_reported[selected_germany_daily$predicted_per100000_daily_deaths == max(selected_germany_daily$predicted_per100000_daily_deaths)]
#View(mycity)

library(ggplot2)

ggplot()+
  geom_line(data = combined_predicted_observed_death, aes(x = who_uk.Date_reported, y = predicted_daily_death, group=1, col = 'Total'))+
  geom_line(data = selected_uk_daily, aes(x = date_reported, y = mean, group=1, col = 'The United Kingdom'))+
  geom_line(data = selected_italy_daily, aes(x = date_reported, y = mean, group=1, col = 'Italy'))+
  geom_line(data = selected_france_daily, aes(x = date_reported, y = mean, group=1, col = 'France'))+
  geom_line(data = selected_spain_daily, aes(x = date_reported, y = mean, group=1, col = 'Sapin'))+
  geom_line(data = selected_belgium_daily, aes(x = date_reported, y = mean, group=1, col = 'Belgium'))+
  geom_line(data = selected_germany_daily, aes(x = date_reported, y = mean, group=1, col = 'Germany'))+
  scale_color_brewer(palette = "Set2",name="Country") +
  labs(
    title="Predicted Daily Deaths of COVID-19 in Selected Countries", subtitle="2020/04/09 - 2020/05/25",
    x="Date",
    y="Number of deaths", 
    caption="Source: IHME")+
  scale_x_discrete(breaks = c('2020-04-09', '2020-04-16', '2020-04-23', '2020-04-30', '2020-05-06', '2020-05-12', '2020-05-18', '2020-05-25'), 
                   labels = c('04-09', '04-16', '04-23', '04-30', '05-06', '05-12', '05-18', '05-25'))

ggplot()+
  geom_line(data = combined_predicted_observed_death, aes(x = who_uk.Date_reported, y = observed_daily_death, group=1, col = 'Total'))+
  geom_line(data = who_uk, aes(x = Date_reported, y = New_deaths, group=1, col = 'The United Kingdom'))+
  geom_line(data = who_italy, aes(x = Date_reported, y = New_deaths, group=1, col = 'Italy'))+
  geom_line(data = who_france, aes(x = Date_reported, y = New_deaths, group=1, col = 'France'))+
  geom_line(data = who_spain, aes(x = Date_reported, y = New_deaths, group=1, col = 'Sapin'))+
  geom_line(data = who_belgium, aes(x = Date_reported, y = New_deaths, group=1, col = 'Belgium'))+
  geom_line(data = who_germany, aes(x = Date_reported, y = New_deaths, group=1, col = 'Germany'))+
  scale_color_brewer(palette = "Set2",name="Country") +
  labs(
    title="Observed Daily Deaths of COVID-19 in Selected Countries", subtitle="2020/04/09 - 2020/05/25",
    x="Date",
    y="Number of deaths", 
    caption="Source: WHO")+
  scale_x_discrete(breaks = c('2020-04-09', '2020-04-16', '2020-04-23', '2020-04-30', '2020-05-06', '2020-05-12', '2020-05-18', '2020-05-25'), 
                   labels = c('04-09', '04-16', '04-23', '04-30', '05-06', '05-12', '05-18', '05-25'))

ggplot()+
  geom_line(data = combined_predicted_observed_death, aes(x = who_uk.Date_reported, y = predicted_cumulative_death, group=1, col = 'Total'))+
  geom_line(data = selected_uk_cumulative, aes(x = date_reported, y = mean, group=1, col = 'The United Kingdom'))+
  geom_line(data = selected_italy_cumulative, aes(x = date_reported, y = mean, group=1, col = 'Italy'))+
  geom_line(data = selected_france_cumulative, aes(x = date_reported, y = mean, group=1, col = 'France'))+
  geom_line(data = selected_spain_cumulative, aes(x = date_reported, y = mean, group=1, col = 'Sapin'))+
  geom_line(data = selected_belgium_cumulative, aes(x = date_reported, y = mean, group=1, col = 'Belgium'))+
  geom_line(data = selected_germany_cumulative, aes(x = date_reported, y = mean, group=1, col = 'Germany'))+
  scale_color_brewer(palette = "Set2",name="Country") +
  labs(
    title="Predicted Cumulative Deaths of COVID-19 in Selected Countries", subtitle="2020/04/09 - 2020/05/25",
    x="Date",
    y="Number of deaths", 
    caption="Source: IHME")+
  scale_x_discrete(breaks = c('2020-04-09', '2020-04-16', '2020-04-23', '2020-04-30', '2020-05-06', '2020-05-12', '2020-05-18', '2020-05-25'), 
                   labels = c('04-09', '04-16', '04-23', '04-30', '05-06', '05-12', '05-18', '05-25'))

ggplot()+
  geom_line(data = combined_predicted_observed_death, aes(x = who_uk.Date_reported, y = observed_cumulative_death, group=1, col = 'Total'))+
  geom_line(data = who_uk, aes(x = Date_reported, y = Cumulative_deaths, group=1, col = 'The United Kingdom'))+
  geom_line(data = who_italy, aes(x = Date_reported, y = Cumulative_deaths, group=1, col = 'Italy'))+
  geom_line(data = who_france, aes(x = Date_reported, y = Cumulative_deaths, group=1, col = 'France'))+
  geom_line(data = who_spain, aes(x = Date_reported, y = Cumulative_deaths, group=1, col = 'Sapin'))+
  geom_line(data = who_belgium, aes(x = Date_reported, y = Cumulative_deaths, group=1, col = 'Belgium'))+
  geom_line(data = who_germany, aes(x = Date_reported, y = Cumulative_deaths, group=1, col = 'Germany'))+
  scale_color_brewer(palette = "Set2",name="Country") +
  labs(
    title="Observed Cumulative Deaths of COVID-19 in Selected Countries", subtitle="2020/04/09 - 2020/05/25",
    x="Date",
    y="Number of deaths", 
    caption="Source: WHO")+
  scale_x_discrete(breaks = c('2020-04-09', '2020-04-16', '2020-04-23', '2020-04-30', '2020-05-06', '2020-05-12', '2020-05-18', '2020-05-25'), 
                   labels = c('04-09', '04-16', '04-23', '04-30', '05-06', '05-12', '05-18', '05-25'))

ggplot(combined_data)+
  geom_line(aes(x = Date_reported, y = mean, group=1, col = 'Predicted'))+
  geom_linerange(aes(x = Date_reported, y = mean, group=1, ymin = lower, ymax=upper, col = 'Predicted'))+
  geom_line(aes(x = Date_reported, y = New_deaths, group=1, col = 'Observed'))+
  scale_color_brewer(palette = "Set2", name="Attribute") +
  labs(
    title="Daily Deaths of COVID-19 in Selected Countries", subtitle="2020/04/09 - 2020/05/25",
    x="Date",
    y="Number of deaths", 
    caption="Source: IHME & WHO")+
  scale_x_discrete(breaks = c('2020-04-09', '2020-04-16', '2020-04-23', '2020-04-30', '2020-05-06', '2020-05-12', '2020-05-18', '2020-05-25'), 
                   labels = c('04-09', '04-16', '04-23', '04-30', '05-06', '05-12', '05-18', '05-25'))+
  facet_wrap(~Country, ncol=2, scales="free_y")

ggplot(combined_data)+
  geom_line(aes(x = Date_reported, y = mean.1, group=1, col = 'Predicted'))+
  geom_linerange(aes(x = Date_reported, y = mean, group=1, ymin = lower.1, ymax=upper.1, col = 'Predicted'))+
  geom_line(aes(x = Date_reported, y = Cumulative_deaths, group=1, col = 'Observed'))+
  scale_color_brewer(palette = "Set2", name="Attribute") +
  labs(
    title="Cumulative Deaths of COVID-19 in Selected Countries", subtitle="2020/04/09 - 2020/05/25",
    x="Date",
    y="Number of deaths", 
    caption="Source: IHME & WHO")+
  scale_x_discrete(breaks = c('2020-04-09', '2020-04-16', '2020-04-23', '2020-04-30', '2020-05-06', '2020-05-12', '2020-05-18', '2020-05-25'), 
                   labels = c('04-09', '04-16', '04-23', '04-30', '05-06', '05-12', '05-18', '05-25'))+
  facet_wrap(~Country, ncol=2, scales="free_y")

ggplot() +
  geom_polygon(data = selected_map, aes(x = long, y = lat, group = group, fill = region), colour = "gray", alpha = 0.8) +
  scale_fill_brewer(palette = "Set2", name="Country") +
  geom_point(data = mycity, aes(x = mean_long, y = mean_lat), alpha = 0.7) +
  geom_text(data = mycity, aes(x = mean_long, y = mean_lat + 2.5, label = round(observed_peak_daily_deaths,2)), colour = "black", fontface = "bold") +
  geom_text(data = mycity, aes(x = mean_long, y = mean_lat + 1, label = observed_peak_daily_deaths_date), colour = "black", fontface = "bold") +
  labs(
    title="Value & Date of Observed Peak Daily COVID-19 Death Rate in Selected Countries", subtitle="2020/04/09 - 2020/05/25",
    x="Longitude",
    y="Latitude", 
    caption="Source: WHO & Worldometer")

ggplot() +
  geom_polygon(data = selected_map, aes(x = long, y = lat, group = group, fill = region), colour = "gray", alpha = 0.8) +
  scale_fill_brewer(palette = "Set2", name="Country") +
  geom_point(data = mycity, aes(x = mean_long, y = mean_lat), alpha = 0.7) +
  geom_text(data = mycity, aes(x = mean_long, y = mean_lat + 2.5, label = round(predicted_peak_daily_deaths,2)), colour = "black", fontface = "bold") +
  geom_text(data = mycity, aes(x = mean_long, y = mean_lat + 1, label = predicted_peak_daily_deaths_date), colour = "black", fontface = "bold") +
  labs(
    title="Value & Date of Predicted Peak Daily COVID-19 Death Rate in Selected Countries", subtitle="2020/04/09 - 2020/05/25",
    x="Longitude",
    y="Latitude", 
    caption="Source: IHME & Worldometer")

MAE = function(actual, predict){mean(actual - predict)}

MAE(max(who_uk$observed_per100000_daily_deaths), max(selected_uk_daily$predicted_per100000_daily_deaths))
MAE(max(who_italy$observed_per100000_daily_deaths), max(selected_italy_daily$predicted_per100000_daily_deaths))
MAE(max(who_france$observed_per100000_daily_deaths), max(selected_france_daily$predicted_per100000_daily_deaths))
MAE(max(who_spain$observed_per100000_daily_deaths), max(selected_spain_daily$predicted_per100000_daily_deaths))
MAE(max(who_belgium$observed_per100000_daily_deaths), max(selected_belgium_daily$predicted_per100000_daily_deaths))
MAE(max(who_germany$observed_per100000_daily_deaths), max(selected_germany_daily$predicted_per100000_daily_deaths))
MAE(max(combined_predicted_observed_death$observed_daily_death)/335749691, max(combined_predicted_observed_death$predicted_daily_death)/335749691)

MAE(who_uk$Cumulative_deaths, selected_uk_cumulative$mean)
MAE(who_italy$Cumulative_deaths, selected_italy_cumulative$mean)
MAE(who_france$Cumulative_deaths, selected_france_cumulative$mean)
MAE(who_spain$Cumulative_deaths, selected_spain_cumulative$mean)
MAE(who_belgium$Cumulative_deaths, selected_belgium_cumulative$mean)
MAE(who_germany$Cumulative_deaths, selected_germany_cumulative$mean)
MAE(combined_predicted_observed_death$observed_cumulative_death, combined_predicted_observed_death$predicted_cumulative_death)

MAE(who_uk$New_deaths, selected_uk_daily$mean)
MAE(who_italy$New_deaths, selected_italy_daily$mean)
MAE(who_france$New_deaths, selected_france_daily$mean)
MAE(who_spain$New_deaths, selected_spain_daily$mean)
MAE(who_belgium$New_deaths, selected_belgium_daily$mean)
MAE(who_germany$New_deaths, selected_germany_daily$mean)
MAE(combined_predicted_observed_death$observed_daily_death, combined_predicted_observed_death$predicted_daily_death)


