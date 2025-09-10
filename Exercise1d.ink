/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 * A story with at least 6 knots
 * Vary some text via a loop
 * Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR sandiness = -1 // 0 not sandy, 1 kind of sandy, 2 covered in sand




-> seashore

== seashore ==
You are sitting on the beach. 

It is {advance_time()}.
You are {more_sand()}.

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.
+ [eat a meal] -> food
* {time == 1} [pick up some seashells] -> shells
* {time == 2} [follow some footprints] -> footprints
It is {advance_time()}

+ [Move back up the beach] -> seashore

== food ==
You have {&Waffles|Burgers|Steak}
+ [eat your meal and head back to shore] -> seashore

== shells ==
You pick up the shells
-> beach2

== footprints==
You see a deer
* [walk toward the deer] -> deer
* [go back to the shore] -> seashore

== deer ==
The deer doesn't like you and snips at you
* [return to shore] -> seashore

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    == function more_sand ==
    
    ~ sandiness = sandiness + 1
    
    {
        - sandiness > 2:
            ~ sandiness = 0
    }
    
    {
        - sandiness == 0:
            ~ return "sandy"
            
        - sandiness == 1:
            ~ return "kind of sandy"
            
        - sandiness == 2:
            ~ return "very sandy. You wash it off in the sea"
            
    }
    
    
