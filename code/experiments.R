experiments <- function(){


Group <- c("Control", "Group 1", "Group 2", "", "Group 3")
#Treatment <- c("No lottery", "Standard Lottery", "Regret Lottery", "Referral Lottery")
Treatment <- c("No lottery", "Individual is entered into a lottery once they are vaccinated", "Everyone in the group is entered into a lottery; only vaccinated individuals can", "claim the prize", "Individual is entered if she is vaccinated and refers a friend, who gets vaccinated")
frame <- data.frame(Group, Treatment)
frame

}