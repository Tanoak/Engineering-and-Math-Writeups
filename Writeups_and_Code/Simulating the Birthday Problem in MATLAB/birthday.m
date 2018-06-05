function [boolean_same_bday] = birthday(people,days)
%%FUNCTION PARAMETERS
%boolean_same_bday returns 1 if at least two people have the same birthday
%boolean_same_bday returns 0 otherwise
%people is the number of people in the set
%days is the number of days in the year (365 for non-leap year, 366 for
%   leap year)

birthdates = []; %creating a vector of length n to store the birthdays
flag = 0;
p = 1;
       %we need to generate a birthday for each person p
birthdates = unidrnd(days,1,people); 
       
if(people==0 || people==1)
    boolean_same_bday = 0;
    return;
end

for ii=1:1:people-1
    if(flag)
        break
    end
    for jj=ii+1:1:people
        if(birthdates(ii) == birthdates(jj))
            boolean_same_bday = 1;
            flag = 1;
            break;
        end
    end
end
if(~flag)
    boolean_same_bday = 0;
end

