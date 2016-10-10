//
//  DeviceLibrary.m
//  DeviceLibrary
//
//  Created by Quickli on 18/07/16.
//  Copyright © 2016 Quickli. All rights reserved.
//

static float kwidth = 414;
static float kheight = 736;
#import <UIKit/UIKit.h>
#import "DeviceLibrary.h"


@implementation DeviceLibrary


+ (DeviceLibrary *)sharedManager {
    static DeviceLibrary *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}


-(float)setFont:(float)fontSize
{
    float dynamicScreenWith = ([UIScreen mainScreen].bounds.size.height);
    return (dynamicScreenWith/kheight) * fontSize;
}

-(float)setWidth:(float)width{
    float dynamicScreenWidth = ([UIScreen mainScreen].bounds.size.width);
    return (dynamicScreenWidth/kwidth) * width;
    
}

-(float)setHeight:(float)height
{
    float dynamicScreenHeight = ([UIScreen mainScreen].bounds.size.height);
    return (dynamicScreenHeight/kheight) * height;
    
}

- (NSDictionary *)countryCodePickerDictionary
{
    return [NSDictionary dictionaryWithObjectsAndKeys:@"93",@"Afghanistan",@"358",@"Aland Islands",@"355",@"Albania",@"213",@"Algeria",@"1",@"American Samoa",@"376",@"Andorra",@"244",@"Angola",@"1",@"Anguilla",@"672",@"Antarctica",@"1",@"Antigua and Barbuda",@"54",@"Argentina",@"374",@"Armenia",@"297",@"Aruba",@"247",@"Ascension Island",@"61",@"Australia",@"43",@"Austria",@"994",@"Azerbaijan",@"1",@"Bahamas",@"973",@"Bahrain",@"880",@"Bangladesh",@"1",@"Barbados",@"375",@"Belarus",@"32",@"Belgium",@"501",@"Belize",@"229",@"Benin",@"1",@"Bermuda",@"975",@"Bhutan",@"591",@"Bolivia",@"387",@"Bosnia and Herzegovina",@"267",@"Botswana",@"55",@"Brazil",@"246",@"British Indian Ocean Territory",@"673",@"Brunei Darussalam",@"226",@"Burkina Faso",@"257",@"Burundi",@"855",@"Cambodia",@"237",@"Cameroon",@"1",@"Canada",@"34",@"Canary Islands",@"238",@"Cape Verde",@"1",@"Cayman Islands",@"236",@"Central African Republic",@"34",@"Ceuta and Melilla",@"235",@"Chad",@"56",@"Chile",@"86",@"China",@"61",@"Christmas Island",@"57",@"Colombia",@"269",@"Comoros",@"242",@"Congo",@"243",@"Congo­ Democratic Republic of the",@"682",@"Cook  Islands",@"506",@"Costa Rica",@"225",@"Côte D'Ivoire",@"385",@"Croatia",@"53",@"Cuba",@"357",@"Cyprus­ Republic of",@"90",@"Cyprus­ Turkish Republic of Northern",@"420",@"Czech  Republic",@"45",@"Denmark",@"253",@"Djibouti",@"1",@"Dominica",@"1",@"Dominican Republic",@"593",@"Ecuador",@"20",@"Egypt",@"503",@"El Salvador",@"240",@"Equatorial Guinea",@"291",@"Eritrea",@"372",@"Estonia",@"251",@"Ethiopia",@"500",@"Falkland Islands",@"298",@"Faroe Islands",@"679",@"Fiji",@"358",@"Finland",@"33",@"France",@"594",@"French Guiana",@"689",@"French Polynesia",@"262",@"French Southern and Antarctic  Lands",@"241",@"Gabon",@"220",@"Gambia",@"995",@"Georgia",@"233",@"Ghana",@"350",@"Gibraltar",@"30",@"Greece",@"299",@"Greenland",@"1",@"Grenada",@"590",@"Guadeloupe",@"1",@"Guam",@"502",@"Guatemala",@"44",@"Guernsey",@"224",@"Guinea",@"245",@"Guinea- Bissau",@"592",@"Guyana",@"509",@"Haiti",@"504",@"Honduras",@"852",@"Hong Kong",@"36",@"Hungary",@"354",@"Iceland",@"91",@"India",@"62",@"Indonesia",@"98",@"Iran",@"964",@"Iraq",@"353",@"Ireland",@"44",@"Isle of Man",@"972",@"Israel",@"39",@"Italy",@"1",@"Jamaica",@"81",@"Japan",@"44",@"Jersey",@"962",@"Jordan",@"7",@"Kazakhstan",@"254",@"Kenya",@"686",@"Kiribati",@"850",@"Korea-Democratic People's Republic of",@"82",@"Korea­ Republic of",@"965",@"Kuwait",@"996",@"Kyrgyz Republic",@"856",@"Laos",@"371",@"Latvia",@"961",@"Lebanon",@"266",@"Lesotho",@"231",@"Liberia",@"218",@"Libya",@"423",@"Liechtenstein",@"370",@"Lithuania",@"352",@"Luxembourg",@"853",@"Macao",@"389",@"Macedonia",@"261",@"Madagascar",@"265",@"Malawi",@"60",@"Malaysia",@"960",@"Maldives",@"223",@"Mali",@"356",@"Malta",@"692",@"Marshall Islands",@"596",@"Martinique",@"222",@"Mauritania",@"230",@"Mauritius",@"269",@"Mayotte",@"52",@"Mexico",@"691",@"Micronesia",@"373",@"Moldova",@"377",@"Monaco",@"976",@"Mongolia",@"382",@"Montenegro",@"1",@"Montserrat",@"212",@"Morocco",@"258",@"Mozambique",@"95",@"Myanmar",@"264",@"Namibia",@"674",@"Nauru",@"977",@"Nepal",@"31",@"Netherlands",@"599",@"Netherlands Antilles",@"687",@"New Caledonia",@"64",@"New Zealand",@"505",@"Nicaragua",@"227",@"Niger",@"234",@"Nigeria",@"683",@"Niue",@"672",@"Norfolk Island",@"1",@"Northern Mariana Islands",@"47",@"Norway",@"968",@"Oman",@"92",@"Pakistan",@"680",@"Palau",@"970",@"Palestine",@"507",@"Panama",@"675",@"Papua New Guinea",@"595",@"Paraguay",@"51",@"Peru",@"63",@"Philippines",@"872",@"Pitcairn",@"48",@"Poland",@"351",@"Portugal",@"1",@"Puerto Rico",@"974",@"Qatar",@"262",@"Réunion",@"40",@"Romania",@"7",@"Russian Federation",@"250",@"Rwanda",@"290",@"Saint Helena",@"1",@"Saint Kitts and Nevis",@"1",@"Saint Lucia",@"508",@"Saint Pierre and Miquelon",@"1",@"Saint Vincent and the Grenadines",@"685",@"Samoa",@"378",@"San Marino",@"239",@"São Tome and Principe",@"966",@"Saudi Arabia",@"221",@"Senegal",@"381",@"Serbia",@"248",@"Seychelles",@"232",@"Sierra Leone",@"65",@"Singapore",@"421",@"Slovakia",@"386",@"Slovenia",@"677",@"Solomon Islands",@"252",@"Somalia",@"252",@"Somaliland",@"27",@"South Africa",@"34",@"Spain",@"94",@"Sri Lanka",@"249",@"Sudan",@"597",@"Suriname",@"47",@"Svalbard and Jan Mayen",@"268",@"Swaziland",@"46",@"Sweden",@"41",@"Switzerland",@"963",@"Syria",@"886",@"Taiwan",@"992",@"Tajikistan",@"255",@"Tanzania",@"66",@"Thailand",@"670",@"Timor- Leste",@"228",@"Togo",@"690",@"Tokelau",@"676",@"Tonga",@"1",@"Trinidad and Tobago",@"290",@"Tristan da Cunha",@"216",@"Tunisia",@"90",@"Turkey",@"993",@"Turkmenistan",@"1",@"Turks and Caicos Islands",@"688",@"Tuvalu",@"256",@"Uganda",@"380",@"Ukraine",@"971",@"United Arab Emirates",@"44",@"United Kingdom",@"1",@"United States",@"699",@"United States Minor Outlying Islands",@"598",@"Uruguay",@"998",@"Uzbekistan",@"678",@"Vanuatu",@"58",@"Venezuela",@"84",@"Viet Nam",@"1",@"Virgin Islands- British",@"1",@"Virgin Islands­ U.S.",@"681",@"Wallis and Futuna Islands",@"212",@"WesternSahara",@"967",@"Yemen",@"260",@"Zambia",@"263",@"Zimbabwe", nil];
    
}

- (NSMutableArray*)countrycodepickerarray
{
    return [NSMutableArray arrayWithObjects:@"Afghanistan",@"Aland Islands",@"Albania",@"Algeria",@"American Samoa",@"Andorra",@"Angola",@"Anguilla",@"Antarctica",@"Antigua and Barbuda",@"Argentina",@"Armenia",@"Aruba",
            @"Ascension Island",@"Australia",@"Austria",@"Azerbaijan",@"Bahamas",@"Bahrain",@"Bangladesh",@"Barbados",@"Belarus",@"Belgium",@"Belize",@"Benin",@"Bermuda",@"Bhutan",@"Bolivia",@"Bosnia and Herzegovina",@"Botswana",@"Brazil",@"British Indian Ocean Territory",@"Brunei Darussalam",@"Burkina Faso",@"Burundi",@"Cambodia",@"Cameroon",@"Canada",@"Canary Islands",@"Cape Verde",@"Cayman Islands",@"Central African Republic",@"Ceuta and Melilla",@"Chad",@"Chile",@"China",@"Christmas Island",@"Colombia",@"Comoros",@"Congo",@"Congo­ Democratic Republic of the",@"Cook  Islands",@"Costa Rica",@"Côte D'Ivoire",@"Croatia",@"Cuba",@"Cyprus­ Republic of",@"Cyprus­ Turkish Republic of Northern",@"Czech  Republic",@"Denmark",@"Djibouti",@"Dominica",@"Dominican Republic",@"Ecuador",@"Egypt",@"El Salvador",@"Equatorial Guinea",@"Eritrea",@"Estonia",@"Ethiopia",@"Falkland Islands",@"Faroe Islands",@"Fiji",@"Finland",@"France",@"French Guiana",@"French Polynesia",@"French Southern and Antarctic  Lands",@"Gabon",
            @"Gambia",@"Georgia",@"Ghana",@"Gibraltar",@"Greece",@"Greenland",@"Grenada",@"Guadeloupe",@"Guam",@"Guatemala",@"Guernsey",@"Guinea",@"Guinea- Bissau",@"Guyana",@"Haiti",@"Honduras",@"Hong Kong",@"Hungary",@"Iceland",@"India",@"Indonesia",@"Iran",@"Iraq",@"Ireland",@"Isle of Man",@"Israel",@"Italy",@"Jamaica",@"Japan",@"Jersey",@"Jordan",@"Kazakhstan",@"Kenya",@"Kiribati",@"Korea-Democratic People's Republic of",@"Korea­ Republic of",@"Kuwait",@"Kyrgyz Republic",@"Laos",@"Latvia",@"Lebanon",@"Lesotho",@"Liberia",@"Libya",@"Liechtenstein",@"Lithuania",@"Luxembourg",@"Macao",@"Macedonia",@"Madagascar",@"Malawi",@"Malaysia",@"Maldives",@"Mali",@"Malta",@"Marshall Islands",@"Martinique",@"Mauritania",@"Mauritius",@"Mayotte",@"Mexico",@"Micronesia",@"Moldova",@"Monaco",@"Mongolia",@"Montenegro",@"Montserrat",@"Morocco",@"Mozambique",@"Myanmar",@"Namibia",@"Nauru",@"Nepal",@"Netherlands",@"Netherlands Antilles",@"New Caledonia",@"New Zealand",@"Nicaragua",@"Niger",@"Nigeria",@"Niue",@"Norfolk Island",@"Northern Mariana Islands",
            @"Norway",@"Oman",@"Pakistan",@"Palau",@"Palestine",@"Panama",@"Papua New Guinea",@"Paraguay",@"Peru",@"Philippines",@"Pitcairn",@"Poland",@"Portugal",@"Puerto Rico",@"Qatar",@"Réunion",@"Romania",@"Russian Federation",@"Rwanda",@"Saint Helena",@"Saint Kitts and Nevis",@"Saint Lucia",@"Saint Pierre and Miquelon",@"Saint Vincent and the Grenadines",@"Samoa",@"San Marino",@"São Tome and Principe",@"Saudi Arabia",@"Senegal",@"Serbia",@"Seychelles",@"Sierra Leone",@"Singapore",@"Slovakia",@"Slovenia",
            @"Solomon Islands",@"Somalia",@"Somaliland",@"South Africa",@"Spain",
            @"Sri Lanka",@"Sudan",@"Suriname",@"Svalbard and Jan Mayen" ,
            @"Swaziland",@"Sweden",@"Switzerland",@"Syria",@"Taiwan",@"Tajikistan",@"Tanzania",@"Thailand",@"Timor- Leste",@"Togo",@"Tokelau",@"Tonga",@"Trinidad and Tobago",@"Tristan da Cunha",@"Tunisia",@"Turkey",@"Turkmenistan",@"Turks and Caicos Islands",@"Tuvalu",@"Uganda",@"Ukraine",@"United Arab Emirates",@"United Kingdom",@"United States",@"United States Minor Outlying Islands",@"Uruguay",@"Uzbekistan",@"Vanuatu",@"Venezuela",@"Viet Nam",@"Virgin Islands- British",@"Virgin Islands­ U.S.",@"Wallis and Futuna Islands",@"WesternSahara",@"Yemen",@"Zambia",@"Zimbabwe", nil];
    
}






@end
