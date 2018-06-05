function [ probability ] = birthdaymath( people )
%%FUNCTION PARAMETERS
% people = number of people in room
% days = number of days in year

complement = nchoosek(365,people)*factorial(people) / (365)^(people);
probability = 1 - complement;
end

