/*
InflectionsTestCase.m
Inflections

Copyright (c) 2010 Adam Elliot (adam@adamelliot.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the @"Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED @"AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#import "InflectionsTestCase.h"

@implementation InflectionsTestCase

- (NSDictionary *)SingularToPlural {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"search"      , @"searches",
		@"switch"      , @"switches",
		@"fix"         , @"fixes",
		@"box"         , @"boxes",
		@"process"     , @"processes",
		@"address"     , @"addresses",
		@"case"        , @"cases",
		@"stack"       , @"stacks",
		@"wish"        , @"wishes",
		@"fish"        , @"fish",
		@"jeans"       , @"jeans",
		@"funky jeans" , @"funky jeans",

		@"category"    , @"categories",
		@"query"       , @"queries",
		@"ability"     , @"abilities",
		@"agency"      , @"agencies",
		@"movie"       , @"movies",

		@"archive"     , @"archives",

		@"index"       , @"indices",

		@"wife"        , @"wives",
		@"safe"        , @"saves",
		@"half"        , @"halves",

		@"move"        , @"moves",

		@"salesperson" , @"salespeople",
		@"person"      , @"people",

		@"spokesman"   , @"spokesmen",
		@"man"         , @"men",
		@"woman"       , @"women",

		@"basis"       , @"bases",
		@"diagnosis"   , @"diagnoses",
		@"diagnosis_a" , @"diagnosis_as",

		@"datum"       , @"data",
		@"medium"      , @"media",
		@"analysis"    , @"analyses",

		@"node_child"  , @"node_children",
		@"child"       , @"children",

		@"experience"  , @"experiences",
		@"day"         , @"days",

		@"comment"     , @"comments",
		@"foobar"      , @"foobars",
		@"newsletter"  , @"newsletters",

		@"old_news"    , @"old_news",
		@"news"        , @"news",

		@"series"      , @"series",
		@"species"     , @"species",

		@"quiz"        , @"quizzes",

		@"perspective" , @"perspectives",

		@"ox"          , @"oxen",
		@"photo"       , @"photos",
		@"buffalo"     , @"buffaloes",
		@"tomato"      , @"tomatoes",
		@"dwarf"       , @"dwarves",
		@"elf"         , @"elves",
		@"information" , @"information",
		@"equipment"   , @"equipment",
		@"bus"         , @"buses",
		@"status"      , @"statuses",
		@"status_code" , @"status_codes",
		@"mouse"       , @"mice",

		@"louse"       , @"lice",
		@"house"       , @"houses",
		@"octopus"     , @"octopi",
		@"virus"       , @"viri",
		@"alias"       , @"aliases",
		@"portfolio"   , @"portfolios",

		@"vertex"      , @"vertices",
		@"matrix"      , @"matrices",
		@"matrix_fu"   , @"matrix_fus",

		@"axis"        , @"axes",
		@"testis"      , @"testes",
		@"crisis"      , @"crises",

		@"rice"        , @"rice",
		@"shoe"        , @"shoes",

		@"horse"       , @"horses",
		@"prize"       , @"prizes",
		@"edge"        , @"edges",

		@"cow"         , @"kine",
		@"database"    , @"databases",
		nil];
}

- (NSDictionary *)CamelToUnderscore {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"Product"               , @"product",
		@"SpecialGuest"          , @"special_guest",
		@"ApplicationController" , @"application_controller",
		@"Area51Controller"      , @"area51_controller",
		nil];
}

- (NSDictionary *)UnderscoreToLowerCamel {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"product"                , @"product",
		@"special_guest"          , @"specialGuest",
		@"application_controller" , @"applicationController",
		@"area51_controller"      , @"area51Controller",
		nil];
}

- (NSDictionary *)CamelToUnderscoreWithoutReverse {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"HTMLTidy"              , @"html_tidy",
		@"HTMLTidyGenerator"     , @"html_tidy_generator",
		@"FreeBSD"               , @"free_bsd",
		@"HTML"                  , @"html",
		nil];
}

- (NSDictionary *)CamelWithModuleToUnderscoreWithSlash {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"Admin::Product" , @"admin/product",
		@"Users::Commission::Department" , @"users/commission/department",
		@"UsersSection::CommissionDepartment" , @"users_section/commission_department",
		nil];
}

- (NSDictionary *)ClassNameToForeignKeyWithUnderscore {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"Person" , @"person_id",
		@"MyApplication::Billing::Account" , @"account_id",
		nil];
}

- (NSDictionary *)ClassNameToForeignKeyWithoutUnderscore {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"Person" , @"personid",
		@"MyApplication::Billing::Account" , @"accountid",
		nil];
}

- (NSDictionary *)ClassNameToTableName {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"PrimarySpokesman" , @"primary_spokesmen",
		@"NodeChild"        , @"node_children",
		nil];
}

- (NSDictionary *)StringToParameterized {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"Donald E. Knuth"                     , @"donald-e-knuth",
		@"Random text with *(bad)* characters" , @"random-text-with-bad-characters",
		@"Allow_Under_Scores"                  , @"allow_under_scores",
		@"Trailing bad characters!@#"          , @"trailing-bad-characters",
		@"!@#Leading bad characters"           , @"leading-bad-characters",
		@"Squeeze   separators"                , @"squeeze-separators",
		@"Test with + sign"                    , @"test-with-sign",
		@"Test with malformed utf8 \251"       , @"test-with-malformed-utf8",
		nil];
}

- (NSDictionary *)StringToParameterizeWithNoSeparator {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"Donald E. Knuth"                     , @"donaldeknuth",
		@"Random text with *(bad)* characters" , @"randomtextwithbadcharacters",
		@"Trailing bad characters!@#"          , @"trailingbadcharacters",
		@"!@#Leading bad characters"           , @"leadingbadcharacters",
		@"Squeeze   separators"                , @"squeezeseparators",
		@"Test with + sign"                    , @"testwithsign",
		@"Test with malformed utf8 \251"       , @"testwithmalformedutf8",
		nil];
}

- (NSDictionary *)StringToParameterizeWithUnderscore {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"Donald E. Knuth"                     , @"donald_e_knuth",
		@"Random text with *(bad)* characters" , @"random_text_with_bad_characters",
		@"Trailing bad characters!@#"          , @"trailing_bad_characters",
		@"!@#Leading bad characters"           , @"leading_bad_characters",
		@"Squeeze   separators"                , @"squeeze_separators",
		@"Test with + sign"                    , @"test_with_sign",
		@"Test with malformed utf8 \251"       , @"test_with_malformed_utf8",
		nil];
}

- (NSDictionary *)StringToParameterizedAndNormalized {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"Malmö"                               , @"malmo",
		@"Garçons"                             , @"garcons",
		@"Ops\331"                             , @"opsu",
		@"Ærøskøbing"                          , @"aeroskobing",
		@"Aßlar"                               , @"asslar",
		@"Japanese: 日本語"                       , @"japanese",
		nil];
}

- (NSDictionary *)UnderscoreToHuman {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"employee_salary" , @"Employee salary",
		@"employee_id"     , @"Employee",
		@"underground"     , @"Underground",
		nil];
}

- (NSDictionary *)MixtureToTitleCase {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"active_record"       , @"Active Record",
		@"ActiveRecord"        , @"Active Record",
		@"action web service"  , @"Action Web Service",
		@"Action Web Service"  , @"Action Web Service",
		@"Action web service"  , @"Action Web Service",
		@"actionwebservice"    , @"Actionwebservice",
		@"Actionwebservice"    , @"Actionwebservice",
		@"david's code"        , @"David's Code",
		@"David's code"        , @"David's Code",
		@"david's Code"        , @"David's Code",
		nil];
}

- (NSDictionary *)OrdinalNumbers {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"0" , @"0th",
		@"1" , @"1st",
		@"2" , @"2nd",
		@"3" , @"3rd",
		@"4" , @"4th",
		@"5" , @"5th",
		@"6" , @"6th",
		@"7" , @"7th",
		@"8" , @"8th",
		@"9" , @"9th",
		@"10" , @"10th",
		@"11" , @"11th",
		@"12" , @"12th",
		@"13" , @"13th",
		@"14" , @"14th",
		@"20" , @"20th",
		@"21" , @"21st",
		@"22" , @"22nd",
		@"23" , @"23rd",
		@"24" , @"24th",
		@"100" , @"100th",
		@"101" , @"101st",
		@"102" , @"102nd",
		@"103" , @"103rd",
		@"104" , @"104th",
		@"110" , @"110th",
		@"111" , @"111th",
		@"112" , @"112th",
		@"113" , @"113th",
		@"1000" , @"1000th",
		@"1001" , @"1001st",
		nil];
}

- (NSDictionary *)UnderscoresToDashes {
	return [NSDictionary dictionaryWithObjectsAndKeys:
		@"street"                , @"street",
		@"street_address"        , @"street-address",
		@"person_street_address" , @"person-street-address",
		nil];
}

- (void)testPluralizePlurals {
	STAssertEqualObjects(@"plurals", [@"plurals" pluralize], nil);
	STAssertEqualObjects(@"Plurals", [@"Plurals" pluralize], nil);
}

- (void)testPluralizeEmptyString {
	STAssertEqualObjects(@"", [@"" pluralize], nil);
}

- (void)testPluralize {
	NSDictionary *dict = [self SingularToPlural];

	for (NSString *plural in dict) {
		NSString *singular = [dict valueForKey:plural];

		STAssertEqualObjects(plural, [singular pluralize], nil);
		STAssertEqualObjects([plural capitalize], [[singular capitalize] pluralize], nil);
	}
}

- (void)testSingularize {
	NSDictionary *dict = [self SingularToPlural];

	for (NSString *plural in dict) {
		NSString *singular = [dict valueForKey:plural];

		STAssertEqualObjects(singular, [plural singularize], nil);
		STAssertEqualObjects([singular capitalize], [[plural capitalize] singularize], nil);
	}
}

- (void)testTitleize {
	NSDictionary *dict = [self MixtureToTitleCase];

	for (NSString *titleized in dict) {
		NSString *before = [dict valueForKey:titleized];

		STAssertEqualObjects(titleized, [before titleize], nil);
	}
}

- (void)testCamelize {
	NSDictionary *dict = [self CamelToUnderscore];
	for (NSString *underscore in dict) {
		NSString *camel = [dict valueForKey:underscore];
		STAssertEqualObjects(camel, [underscore camelize], nil);
	}
}

- (void)testCamelizeWithLowerFirstLetter {
	STAssertEqualObjects(@"capital", [@"Capital" camelizeWithLowerFirstLetter], nil);
}

- (void)testUnderscore {
	NSDictionary *dict = [self CamelToUnderscore];
	for (NSString *underscore in dict) {
		NSString *camel = [dict valueForKey:underscore];
		STAssertEqualObjects(underscore, [camel underscore], nil);
	}
	dict = [self CamelToUnderscoreWithoutReverse];
	for (NSString *underscore in dict) {
		NSString *camel = [dict valueForKey:underscore];
		STAssertEqualObjects(underscore, [camel underscore], nil);
	}
}

- (void)testCamelizeWithModule {
	NSDictionary *dict = [self CamelWithModuleToUnderscoreWithSlash];
	for (NSString *underscore in dict) {
		NSString *camel = [dict valueForKey:underscore];
		STAssertEqualObjects(camel, [underscore camelize], nil);
	}
}

- (void)testUnderscoreWithSlashes {
	NSDictionary *dict = [self CamelWithModuleToUnderscoreWithSlash];
	for (NSString *underscore in dict) {
		NSString *camel = [dict valueForKey:underscore];
		STAssertEqualObjects(underscore, [camel underscore], nil);
	}
}

- (void)testDemodulize {
	STAssertEqualObjects(@"Account", [@"MyApplication::Billing::Account" demodulize], nil);
}

- (void)testForeignKey {
	NSDictionary *dict = [self ClassNameToForeignKeyWithUnderscore];
	for (NSString *foreignKey in dict) {
		NSString *klass = [dict valueForKey:foreignKey];
		STAssertEqualObjects(foreignKey, [klass foreignKey], nil);
	}
}

- (void)testForeignKeyWithoutIdUnderscore {
	NSDictionary *dict = [self ClassNameToForeignKeyWithoutUnderscore];
	for (NSString *foreignKey in dict) {
		NSString *klass = [dict valueForKey:foreignKey];
		STAssertEqualObjects(foreignKey, [klass foreignKeyWithoutIdUnderscore], nil);
	}
}

- (void)testTableize {
	NSDictionary *dict = [self ClassNameToTableName];
	for (NSString *tableName in dict) {
		NSString *className = [dict valueForKey:tableName];
		STAssertEqualObjects(tableName, [className tableize], nil);
	}
}

- (void)testClassify {
	NSDictionary *dict = [self ClassNameToTableName];
	for (NSString *tableName in dict) {
		NSString *className = [dict valueForKey:tableName];
		NSString *tableNamePrefixed = [@"table_prefix." stringByAppendingString:tableName];
		STAssertEqualObjects(className, [tableName classify], nil);
		STAssertEqualObjects(className, [tableNamePrefixed classify], nil);
	}
}

- (void)testClassifyWithLeadingSchemaName {
	STAssertEqualObjects(@"FooBar", [@"schema.foo_bar" classify], nil);
}

- (void)testHumanize {
	NSDictionary *dict = [self UnderscoreToHuman];
	for (NSString *human in dict) {
		NSString *underscore = [dict valueForKey:human];
		STAssertEqualObjects(human, [underscore humanize], nil);
	}
}

- (void)testOrdinalize {
	NSDictionary *dict = [self OrdinalNumbers];
	for (NSString *ordinalized in dict) {
		NSString *number = [dict valueForKey:ordinalized];
		STAssertEqualObjects(ordinalized, [number ordinalize], nil);
	}
}

- (void)testDasherize {
	NSDictionary *dict = [self UnderscoresToDashes];
	for (NSString *dasherized in dict) {
		NSString *underscored = [dict valueForKey:dasherized];
		STAssertEqualObjects(dasherized, [underscored dasherize], nil);
	}
}

- (void)testUnderscoreAsReverseOfDasherize {
	NSDictionary *dict = [self UnderscoresToDashes];
	for (NSString *dasherized in dict) {
		NSString *underscored = [dict valueForKey:dasherized];
		STAssertEqualObjects(underscored, [[underscored dasherize] underscore], nil);
	}
}

- (void)testUnderscoreToLowerCamel {
	NSDictionary *dict = [self UnderscoreToLowerCamel];
	for (NSString *lowerCamel in dict) {
		NSString *underscored = [dict valueForKey:lowerCamel];
		STAssertEqualObjects(lowerCamel, [underscored camelizeWithLowerFirstLetter], nil);
	}
}

- (void)testCapitalize {
	STAssertEqualObjects(@"Foobar", [@"foobar" capitalize], nil);
}

@end
