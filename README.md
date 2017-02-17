# NAME

String::Similex - gives a code to compare similar "visual" strings

# SYNOPSIS

    use String::Similex;

    $code  = similex($string);
    @codes = similex(@strings);

    # set value to be returned for strings without a similex code

    $similex_code = ' ';

# DESCRIPTION

The similex code is used to compare strings that are visually
equivalent, character sequences that resemble each other.

# EXAMPLES

Using in your code:

    $code  = similex('Novis');          # $code contains '54C38'
    @codes = similex(qw(Linux MacOSX)); # @codes contains '3541', '521481'

Similar strings:

    linux, |imux                 ->  3541
    CISCO, C15CO, ciscu          ->  13814
    gandalf, ganda1f, gggandalf  ->  B25A231

# TODO

Probably two things:

    o Define a fixed code length as of Soundex. Which value should be
      confortable ?

    o More study of the algorithm. Should 's' be equivalent to 'z' ?
      But 'z' is not like '5'. :/ Different behaviour with upper and
      lower case letters.

# SEE ALSO

Of course Text::Soundex.
The String::Similarity calculates a similarity fuzzy value of two strings.
The String::Approx let's you match and substitute strings approximately.

# AUTHOR

Paulo A Ferreira <biafra@cpan.org>

Please send any suggestion.
This implementation follow the structure of Text::Soundex. It sounded nice.

# COPYRIGHT AND LICENSE

Copyright 2003 by Paulo A Ferreira

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
