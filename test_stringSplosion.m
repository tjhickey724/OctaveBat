%Testing for stringSplosion
%stringSplosion("abcd") => "aababcabcd"
%Nadav Havivi 2011 CS117
%Remeber that strcat does not like whitespace, so none of these examples include whitespace


strcmp(stringSplosion("abcd"), "aababcabcd")
strcmp(stringSplosion("NhMn"), "NNhNhMNhMn")
strcmp(stringSplosion("nothere"), "nnonotnothnothenothernothere")
strcmp(stringSplosion("one"), "oonone")
strcmp(stringSplosion("t"), "t")
strcmp(stringSplosion("he"), "hhe")
strcmp(stringSplosion("banana"), "bbabanbanabananbanana")
strcmp(stringSplosion("12345"), "112123123412345")




