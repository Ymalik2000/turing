var store: array 1..2,1..5 of int
var c : int
var cash : int := 10
var total : int :=0

put "This program will roll 2 dice 5 times"
put "It will show your rolls, and then reward you accordingly"
put "You start off with $10, and it costs $3 to play"
put "Totals of 9 and up will reward $10"
put "Totals of 3 and under will reward $8"
put "Otherwise you lose $2"
put " "
put "Press any key to continue"
put " "

Input.Pause

cash:=cash-3

for x:1..5
    for i:1..2
    randint (c, 1, 6)
	if i = 1 then put "Die #1 got ", c
	    delay (1000)
	elsif i = 2 then put "Die #2 got ", c
	    delay (1000)
	end if
	    store(i,x):=c
    end for
end for

for x:1..5
    for i:1..2
	total:=total+store(i,x)    
    end for
put "For roll #", x ," you.."
    delay (1000)
    if total > 8 then
	cash:= cash+10
	put "Gained $10!"
	    delay (1000)
    elsif total < 4 then
	cash:=cash+8
	put "Gained $8!"
	    delay (1000)
    else cash:=cash-2
	put "Lost $2"
	    delay (1000)
	end if
    total := 0
end for
delay (1000)
put "Your total is $", cash
