%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    /* 
    appendIfMissing(text,suffix) -> Appends the suffix to the end of the text.
    */
    "1(a)": appendIfMissing("Tricon ", "Infotech"),
    "1(b)": appendIfMissing("Tricon Infotech", "Infotech"),
    "-":"-----------------------------------------------------------------",

    /* 
    camelize(text) -> Returns a string in camel case based on underscores in the string.
    */
    "2": camelize("Tricon_Infotech_pvt_ltd"),
    "-":"-----------------------------------------------------------------",

    /*
    capitalize(text) -> Capitalizes the first letter of each word in a string.
    */
    "3(a)": capitalize("tricon infotech"),
    "3(b)": capitalize("tricon_infotech"),
    "3(c)": capitalize("triconINFOTECH"),
    "-":"-----------------------------------------------------------------",

    /*
    charCode(text) -> Returns the Unicode for the first character in an input string.
    */
    "4": charCode("Tricon"),
    "-":"-----------------------------------------------------------------",

    /*
    charCodeAt(text,position) -> Returns the Unicode for a character at the specified index.
    */
    "5": charCodeAt("Tricon",3),
    "-":"-----------------------------------------------------------------",

    /*
    collapse(text) -> Collapses the string into substrings of equal characters.
    */
    "6": collapse("Triconn "),
    "-":"-----------------------------------------------------------------",

    /*
    isAlpha(text: String): Boolean
    Checks if the text contains only Unicode letters.
    */
    "7(a)": isAlpha("abc"),
    "7(b)": isAlpha("ab3c"),
    "-":"-----------------------------------------------------------------",

    /*
    isAlphanumeric(text: String): Boolean
    Checks if the text contains only Unicode letters or digits.
    */
    "8(a)": isAlphanumeric("abc"),
    "8(b)": isAlphanumeric("ab3"),
    "8(c)": isAlphanumeric("abc*(3"),
    "-":"-----------------------------------------------------------------",

    /*
    isLowerCase(text: String): Boolean
    Checks if the text contains only lowercase characters.
    */
    "9(a)": isLowerCase("tricon"),
    "9(b)": isLowerCase("Tricon"),
    "-":"-----------------------------------------------------------------",

    /*
    isNumeric(text: String): Boolean
    Checks if the text contains only Unicode digits.
    */
    "10(a)": isNumeric("123"),
    "10(b)": isNumeric("123abc"),
    "-":"-----------------------------------------------------------------",

    /*
    isUpperCase(text: String): Boolean
    Checks if the text contains only uppercase characters.
    */
    "11(a)": isUpperCase("TRICON"),
    "11(b)": isUpperCase("Tricon"),
    "-":"-----------------------------------------------------------------",

    /*
    isWhitespace(text: String): Boolean
    Checks if the text contains only whitespace.
    */
    "12(a)": isWhitespace(""),
    "12(b)": isWhitespace("Tricon Infotech"),
    "-":"-----------------------------------------------------------------",

    /*
    countCharactersBy(text: String, predicate: (character: String) -> Boolean): Number
    Counts the number of times an expression that iterates through each character in a string returns true.
    */
    "13(a)": "42 = 11 * 2 + 20" countCharactersBy isNumeric($),
    "13(b)": "abc 123 def 456" countCharactersBy isAlpha($),
    "-":"-----------------------------------------------------------------",

    /*
    countMatches(text: String, pattern: String): Number
    Counts the number of matches in a string.
    */
    "14": "Tricon Tricon" countMatches "on",
    "-":"-----------------------------------------------------------------",

    /*
    dasherize(text: String): String
    Replaces spaces, underscores, and camel-casing in a string with dashes (hyphens).

    underscore(text: String): String
    Replaces hyphens, spaces, and camel-casing in a string with underscores.
    */
    "15(a)": dasherize("Tricon Infotech"),
    "15(b)": dasherize("Tricon_Infotech"),
    "15(c)": dasherize("TriconInfotech"),
    "15(d)": underscore("Tricon Infotech"),
    "15(e)": underscore("TriconInfotech"),
    "15(f)": underscore("Tricon-Infotech"),
    "-":"-----------------------------------------------------------------",

    /*
    everyCharacter(text: String, condition: (character: String) -> Boolean): Boolean
    Checks whether a condition is valid for every character in a string.
    */
    "16(a)": "12345" everyCharacter isNumeric($),
    "16(b)": "abcde" everyCharacter isNumeric($),
    "-":"-----------------------------------------------------------------",

    /*
    first(text: String, amount: Number): String
    Returns characters from the beginning of a string to the specified number of characters in the string.
    */
    "17": first("Tricon Infotech",6),
    "-":"-----------------------------------------------------------------",

    /*
    fromCharCode(charCode: Number): String
    Returns a character that matches the specified Unicode.
    */
    "18": fromCharCode(84),
    "-":"-----------------------------------------------------------------",

    /*
    hammingDistance(a: String, b: String): Number | Null
    Returns the Hamming distance between two strings.
    Hamming distance -  The number of positions at which the corresponding symbols are different.
    */
    "19(a)": hammingDistance("abc","bcd"),
    "19(b)": hammingDistance("abc","abe"),
    "19(c)": hammingDistance("abc","abc"),
    "-":"-----------------------------------------------------------------",

    /*
    last(text: String, amount: Number): String
    Returns characters from the end of string to a specified number of characters.
    */
    "20": last("Tricon Infotech",8),
    "-":"-----------------------------------------------------------------",

    /*
    leftPad(text: String, size: Number, padText: String = " "): String
    The specified text is left-padded to the size using the padText. By default padText is " ".
    Returns left-padded String or original String if no padding is necessary.

    rightPad(text: String, size: Number, padChar: String = " "): String
    */
    "21(a)": leftPad("Tricon",7),
    "21(b)": leftPad("Tricon",9,"*"),
    "21(c)": rightPad("Tricon",7),
    "21(d)": rightPad("Tricon",9,"*"),
    "-":"-----------------------------------------------------------------",

    /*
    levenshteinDistance(a: String, b: String): Number
    Returns the Levenshtein distance (or edit distance) between two strings.
    Levenshtein distance between two words is the minimum number of single-character edits (insertions, deletions or substitutions) required to change one word into the other. 
    eg. kitten to sitting
    kitten --> sitten (substitute)
    sitten --> sittin (substitute)
    sittin --> sitting (insert)
    */
    "22": levenshteinDistance("kitten","sitting"),
    "-":"-----------------------------------------------------------------",

    /*
    lines(text: String): Array<String>
    Returns an array of lines from a string.
    \n determines the line break.

    words(text: String): Array<String>
    Returns an array of words from a string.
    Separators between words include blank spaces, new lines, and tabs.
    */
    "23(a)": lines("Hi\nTricon Infotech"),
    "23(b)": words("Tricon Infotech"),
    "-":"-----------------------------------------------------------------",

    /*
    mapString(@StreamCapable text: String, mapper: (character: String, index: Number) -> String): String
    Applies an expression to every character of a string.
    */
    "24": ("Account No 123456" mapString if(isNumeric($)) "*" else $),
    "-":"-----------------------------------------------------------------",

    /*
    ordinalize(num: Number): String
    Returns a number as an ordinal, such as 1st or 2nd.
    */
    "25(a)": ordinalize(1),
    "25(b)": ordinalize(2),
    "25(c)": ordinalize(3),
    "-":"-----------------------------------------------------------------",

    /*
    pluralize(text: String): String
    Pluralizes a singular string.

    singularize(text: String): String
    Converts a plural string to its singular form.
    */
    "26(a)": pluralize("Apple"),
    "26(b)": singularize("Apples"),
    "-":"-----------------------------------------------------------------",

    /*
    prependIfMissing(text: String, prefix: String): String
    Prepends the prefix to the beginning of the string if the text does not already start with that prefix.
    */
    "27(a)": prependIfMissing("Infotech","Tricon "),
    "27(b)": prependIfMissing("Tricon Infotech","Tricon "),
    "-":"-----------------------------------------------------------------",

    /*
    remove(text: String, toRemove: String): String
    Removes all occurrences of a specified pattern from a string.
    */
    "28": "lazyness purity state higher-order stateful" remove "state",
    "-":"-----------------------------------------------------------------",

    /*
    repeat(text: String, times: Number): String
    Repeats a text the number of specified times.
    */
    "29": repeat("Tricon ",3),
    "-":"-----------------------------------------------------------------",

    /*
    replaceAll(text: String, target: String, replacement: String): String
    Replaces all substrings that match a literal search string with a specified replacement string.
    */
    "30": replaceAll("Triiicon","i",""),
    "-":"-----------------------------------------------------------------",

    /*
    reverse(text: String): String
    Reverses sequence of characters in a string.
    */
    "31": reverse("tricon"),
    "-":"-----------------------------------------------------------------",

    /*
    someCharacter(text: String, condition: (character: String) -> Boolean): Boolean
    Checks whether a condition is valid for at least one of the characters or blank spaces in a string.
    */
    "32": "someCharacter" someCharacter isUpperCase($),
    "-":"-----------------------------------------------------------------",

    /*
    substring(text,from,until)
    substringAfter(text,separator)
    */
    "33(a)": substring("Tricon Infotech",0,6),
    "33(b)": substringAfter("Tricon Infotech"," "),
    "33(c)": substringBefore("Tricon Infotech"," "),
    "33(d)": substringAfterLast("Tricon Infotech Pvt Ltd"," "),
    "33(e)": substringBeforeLast("Tricon Infotech Pvt Ltd"," "),
    "-":"-----------------------------------------------------------------",

    /*
    substringBy(text: String, predicate: (character: String, index: Number) -> Boolean): Array<String>
    Splits a string at each character where the predicate expression returns true.
    */
    "34": "Tricon Infotech Pvt Ltd" substringBy $==" ",
    "-":"-----------------------------------------------------------------",

    /*
    substringEvery(text: String, amount: Number): Array<String>
    Splits a string into an array of substrings equal to a specified length.
    */
    "35": substringEvery("Tricon",2),
    "-":"-----------------------------------------------------------------",

    /*
    wrapWith(text,wrapper string)

    unwrap(text: String, wrapper: String): String
    Unwraps a given text from a wrapper text.

    wrapIfMissing(text,wrapper string)
    */
    "36(a)": wrapWith("Tricon","*"),
    "36(b)": unwrap("*Tricon*","*"),
    "36(c)": wrapIfMissing("Tricon Infotech","***"),
    "-":"-----------------------------------------------------------------",

    /*
    withMaxSize(text: String, maxLength: Number): String
    Checks that the string length is no larger than the specified maxLength. If the string’s length is larger than the maxLength, the function cuts characters from left to right, until the string length meets the length limit.
    */
    "37(a)": withMaxSize("Tricon",3),
    "-":"-----------------------------------------------------------------",



}
