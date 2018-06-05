clear all
clc
tic
people = 1;
prob = [];
numbers = [];
filename = "birthdaymathsim";

for people=1:1:365
    %temp = people;
    %numbers(people) = temp;
    probability = birthdaymath(people);
    prob(people) = probability;
end
    
xlsxwrite(filename,prob);
tocprob