module Exercicios.Ex0.Datatypes where

data Task1 = 
    BasicTask1 String Int | 
    ComplexTask1 String Int Location

assignment1 :: Task1
assignment1 = BasicTask1 "Do assignment 1" 60

laundry1 :: Task1
laundry1 = BasicTask1 "Do Laundry" 45

data Location = School | Office | Home

schoolLocation :: Location
schoolLocation = School

officeLocation :: Location
officeLocation = Office

homeLocation :: Location
homeLocation = Home


complexTask :: Task1
complexTask = ComplexTask1 "Write Memo" 30 Office

data TaskLength = 
    QuarterHour |
    HalfHour |
    ThreeQuarterHour |
    Hour |
    HourAndHalf |
    TwoHours |
    ThreeHours

data Task2 a =
    BasicTask2 String a |
    ComplexTask2 String a Location

assignment2 :: Task2 Int
assignment2 = BasicTask2 "Do assignment 2" 60

assignment2' :: Task2 TaskLength
assignment2' = BasicTask2 "Do assignment 2" Hour

laundry2 :: Task2 Int
laundry2 = BasicTask2 "Do Laundry" 45

laundry2' :: Task2 TaskLength
laundry2' = BasicTask2 "Do Laundry" ThreeQuarterHour

complexTask2 :: Task2 TaskLength
complexTask2 = ComplexTask2 "Write Memo" HalfHour Office




