//
//  OCDictionaryUtilities.h

#import <Foundation/Foundation.h>

/**
 Reverse merges two dictionary to produce a new dictionary wherein the keys in the second dictionary have taken precedence in instances where keys overlap. The merge is performed recursively such that subdictionaries are reverse merged as well.
 
 @param dict1 The dictionary to be reverse merged.
 @param dict2 A secondary dictionary to perform the reverse merging with.
 @return A new `NSDicionary` object that is the product of the reverse merge.
 */
NSDictionary *OCDictionaryByMergingDictionaryWithDictionary(NSDictionary *dict1, NSDictionary *dict2);

/**
 Return a new dictionary by stripping out any percent escapes (such as %20) from the given dictionary's key and values.
 
 @param dictionary The dictionary from which to remove the percent escape sequences.
 @return A new `NSDictionary` wherein any percent escape sequences in the key and values have been replaced with their literal values.
 */
NSDictionary *OCDictionaryByReplacingPercentEscapesInEntriesFromDictionary(NSDictionary *dictionary);




/*
 * construct NSDictionary  NSDictionaryOfVariableBindings
 */
#define OCNSDictionaryOfParametersBindings(...) _OCNSDictionaryOfParametersBindings(@"" # __VA_ARGS__, __VA_ARGS__, nil)
NSDictionary * _OCNSDictionaryOfParametersBindings(NSString *listKey, ... );


BOOL  OCIsValidateDictionary (NSDictionary* value);


