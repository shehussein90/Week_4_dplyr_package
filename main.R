#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: HairEyeColor
#and give the dataset a new name of your choice


df <- data.frame(HairEyeColor)
write.csv(df,"HairEye_Color.csv")
print(df)

#See the top rows of the data
#TASK: Write the function to see the top rows of the data
print("printing the  five Top  rows")
data <- data.frame(HairEyeColor)
output = data[1:5,]
print(output)

#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr

install.packages("dplyr")
library(dplyr)

#Let's just see the hair and sex columns
#Task: Write the function to 'select' just the hair and sex columns 
#(hint: use the 'select' function)
print("Hair col")
hair <- read.csv("HairEye_Color.csv")
hair %>% select(Hair)

print(" printing sex column")
sex  <- data.frame(HairEyeColor)
sex  %>% select(Sex)
#Let's name the dataset with just the two columns, Hair and Sex
#TASK: Write the function to save the two columns as a new dataset
#and give it a name
m <- read.csv("HairEye_Color.csv")
df <- data.frame(Hair = c(m %>% select(Hair)),Sex= c(m %>% select(Sex)))
write.csv(df,"HairSex.csv")
df
#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
print("deselecting sex column")
HairSex <- read.csv("HairSex.csv")
select(HairSex,-c(Sex))

#Let's rename a column name
#TASK: Write the function that renames 'sex' to 'gender'
print("Renaming of the sex column")
HairSex <- read.csv("HairSex.csv")
rename(HairSex, Gender=Sex)
#Let's make a new dataset with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
HairSex <- read.csv("HairSex.csv")
df <- rename(HairSex, Gender=Sex)
write.csv(df,"gender_typ.csv")
print(df)

#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'
HairGender <- read.csv("gender_typ.csv")
HairGender %>% filter(Gender == "Male")
write.csv(HairGender,"Male.csv")
#Let's 'group' our data by gender
#TASK: Write the function to group the data by gender (hint: group_by)
HairGender <- read.csv("gender_typ.csv")
HairGender %>% group_by(Gender)

#Let's see how many students were examined in the dataset (total the frequency)
#TASK: replace 'datasetname' with the name of your dataset and get the total
#After you run it, write the total here:_592___
data <- data.frame(HairEyeColor)
get_total=mutate(data, total=cumsum(Freq))
get_total

#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'
gender_of_the_hair <- read.csv("gender_.csv")
gender_of_the_hair %>% filter(Gender == "Female")
write.csv(HairGender,"Female.csv")
#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')
male_rs <- read.csv("Male.csv")
female_rs <- read.csv("Female.csv")
inner_join(male_rs, female_rs)
#Optional Task: add any of the other functions 
#you learned about from the dplyr package
data <- data.frame(HairEyeColor)
data %>% arrange(desc(Freq)) # arrange function

