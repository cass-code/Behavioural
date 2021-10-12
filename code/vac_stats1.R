vac_stats1 <- function(){

    library(dplyr)

    Province <- c("Eastern Cape", "Free State","Gauteng", "KwaZulu-Natal", "Limpopo", "Mpumalanga", "North West", "Northern Cape", "Western Cape", "Total")
    vaccine <- c(1603045,735696,3523373,2170526,1437846,831759,835206,290962,2141933)
    sum <- sum(vaccine)

    population <- c(4099543,1914521,11311326,7219795,3695801,3039520,2693247,847545,4976903)
    s <- sum(population)

    percent <- as.character(c(round((vaccine/population)*100)))

    symbol <- c("%","%","%","%","%","%","%","%","%")

    per <- paste(percent, symbol, sep = "")

    l <- sum/s

    pe <- c(per, "34%")

    vac <- c("1 603 045","735 696","3 523 373","2 170 526","1 437 846","831 759","835 206","290 962","2 141 933", "13 570 346")

    pop <- c("4 099 543","1 914 521","11 311 326","7 219 795","3 695 801","3 039 520","2 693 247","847 545","4 976 903", "39 798 201")

    data <- data.frame(Province, vac, pop, pe) %>% rename("Percentage Vaccinated" = pe) %>% rename("Total Adults Vaccinated" = vac, "Adult Population" = pop)

    data


}