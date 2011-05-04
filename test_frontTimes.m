%Testing for frontimes
%frontTimes("Chocolate", 2) => "ChoCho"
%Nadav Havivi 2011 CS117

%Jeremy Patton - added arbitrary test

strcmp(frontTimes("Chocolate", 2), "ChoCho")
%strcmp(frontTimes("    ", 3), "         ")% 4 spaces, 9 spaces
%Will not work, due to strcat implementation's issues with whitespace
strcmp(frontTimes("notHere", 0), "")
strcmp(frontTimes("one", 1), "one")
strcmp(frontTimes("tw", 2), "twtw")
strcmp(frontTimes("thr", 3), "thrthrthr")
strcmp(frontTimes(" OX", 2), " OX OX")
strcmp(frontTimes("Apple Tree", 4), "AppAppAppApp")
%strcmp(frontTimes("01 ", 3), "01 01 01 ")
%also will not work, but this will:
strcmp(frontTimes("01 ", 3), "010101")
strcmp(frontTimes("a b c d e f", 5), "a ba ba ba ba b")
strcmp(frontTimes("  ?", 2), "  ?  ?")
strcmp(frontTimes("...", 3), ".........")




