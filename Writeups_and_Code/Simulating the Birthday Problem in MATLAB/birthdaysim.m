%Running the birthday Problem
clear all
clc
tic
simulations = 10000;
days = 365;
ii=1;
total_same_bday = 0;
simulated_prob = [];
for people=1:1:365
   for ii=1:1:simulations
        same_bday = birthday(people,days);
        total_same_bday = total_same_bday + same_bday;
    end
    simulated_prob(people) = total_same_bday / simulations;
    total_same_bday = 0;
end

toc