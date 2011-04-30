%Testing for stringSplosion
%stringSplosion("abcd") => "aababcabcd"
%Nadav Havivi 2011 CS117
%Remeber that strcat does not like whitespace, so none of these examples include whitespace

% Tested by:
% Josh Silverman (added null boundary test and whitespace test)

strcmp(stringSplosion("abcd"), "aababcabcd")
strcmp(stringSplosion("NhMn"), "NNhNhMNhMn")
strcmp(stringSplosion("nothere"), "nnonotnothnothenothernothere")
strcmp(stringSplosion("one"), "oonone")
strcmp(stringSplosion("t"), "t")
strcmp(stringSplosion("he"), "hhe")
strcmp(stringSplosion("banana"), "bbabanbanabananbanana")
strcmp(stringSplosion("12345"), "112123123412345")

strcmp(stringSplosion(""), "")
strcmp(stringSplosion("1 2 3"), "11 1 21 2 1 2 3")




