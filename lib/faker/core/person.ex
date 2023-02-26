defmodule Faker.Core.Person do
  alias Faker.Core.Generator

  @title_format [
    "{{title_male}}",
    "{{title_female}}"
  ]

  @first_name_format [
    "{{first_name_male}}",
    "{{first_name_female}}"
  ]

  @male_name_formats [
    "{{first_name_male}} {{last_name}}"
  ]

  @female_name_formats [
    "{{firstNameFemale}} {{lastName}}"
  ]

  @first_name_male [
    "Aaron",
    "Abdiel",
    "Abdul",
    "Abdullah",
    "Abe",
    "Abel",
    "Abelardo",
    "Abner",
    "Abraham",
    "Adalberto",
    "Adam",
    "Adan",
    "Adelbert",
    "Adolfo",
    "Adolphus",
    "Adonis",
    "Adrain",
    "Adrian",
    "Adriel",
    "Adrien",
    "Afton",
    "Agustin",
    "Ahmad",
    "Ahmed",
    "Aidan",
    "Aiden",
    "Akeem",
    "Al",
    "Alan",
    "Albert",
    "Alberto",
    "Albin",
    "Alden",
    "Alec",
    "Alejandrin",
    "Alek",
    "Alessandro",
    "Alex",
    "Alexander",
    "Alexandre",
    "Alexandro",
    "Alexie",
    "Alexis",
    "Alexys",
    "Alexzander",
    "Alf",
    "Alfonso",
    "Alfonzo",
    "Alford",
    "Alfred",
    "Alfredo",
    "Ali",
    "Allan",
    "Allen",
    "Alphonso",
    "Alvah",
    "Alvis",
    "Amani",
    "Amari",
    "Ambrose",
    "Americo",
    "Amir",
    "Amos",
    "Amparo",
    "Anastacio",
    "Anderson",
    "Andre",
    "Andres",
    "Andrew",
    "Andy",
    "Angel",
    "Angelo",
    "Angus",
    "Anibal",
    "Ansel",
    "Ansley",
    "Anthony",
    "Antone",
    "Antonio",
    "Antwan",
    "Antwon",
    "Arch",
    "Archibald",
    "Arden",
    "Arely",
    "Ari",
    "Aric",
    "Ariel",
    "Arjun",
    "Arlo",
    "Armand",
    "Armando",
    "Armani",
    "Arnaldo",
    "Arne",
    "Arno",
    "Arnold",
    "Arnoldo",
    "Arnulfo",
    "Aron",
    "Art",
    "Arthur",
    "Arturo",
    "Arvel",
    "Arvid",
    "Ashton",
    "August",
    "Augustus",
    "Aurelio",
    "Austen",
    "Austin",
    "Austyn",
    "Avery",
    "Axel",
    "Ayden",
    "Bailey",
    "Barney",
    "Baron",
    "Barrett",
    "Barry",
    "Bart",
    "Bartholome",
    "Barton",
    "Baylee",
    "Beau",
    "Bell",
    "Ben",
    "Benedict",
    "Benjamin",
    "Bennett",
    "Bennie",
    "Benny",
    "Benton",
    "Bernard",
    "Bernardo",
    "Bernhard",
    "Bernie",
    "Berry",
    "Berta",
    "Bertha",
    "Bertram",
    "Bertrand",
    "Bill",
    "Billy",
    "Blair",
    "Blaise",
    "Blake",
    "Blaze",
    "Bo",
    "Bobbie",
    "Bobby",
    "Boris",
    "Boyd",
    "Brad",
    "Braden",
    "Bradford",
    "Bradley",
    "Bradly",
    "Brady",
    "Braeden",
    "Brain",
    "Brando",
    "Brandon",
    "Brandt",
    "Brannon",
    "Branson",
    "Brant",
    "Braulio",
    "Braxton",
    "Brayan",
    "Brendan",
    "Brenden",
    "Brendon",
    "Brennan",
    "Brennon",
    "Brent",
    "Bret",
    "Brett",
    "Brian",
    "Brice",
    "Brock",
    "Broderick",
    "Brody",
    "Brook",
    "Brooks",
    "Brown",
    "Bruce",
    "Bryce",
    "Brycen",
    "Bryon",
    "Buck",
    "Bud",
    "Buddy",
    "Buford",
    "Burley",
    "Buster",
    "Cade",
    "Caden",
    "Caesar",
    "Cale",
    "Caleb",
    "Camden",
    "Cameron",
    "Camren",
    "Camron",
    "Camryn",
    "Candelario",
    "Candido",
    "Carey",
    "Carleton",
    "Carlo",
    "Carlos",
    "Carmel",
    "Carmelo",
    "Carmine",
    "Carol",
    "Carroll",
    "Carson",
    "Carter",
    "Cary",
    "Casey",
    "Casimer",
    "Casimir",
    "Casper",
    "Ceasar",
    "Cecil",
    "Cedrick",
    "Celestino",
    "Cesar",
    "Chad",
    "Chadd",
    "Chadrick",
    "Chaim",
    "Chance",
    "Chandler",
    "Charles",
    "Charley",
    "Charlie",
    "Chase",
    "Chauncey",
    "Chaz",
    "Chelsey",
    "Chesley",
    "Chester",
    "Chet",
    "Chris",
    "Christ",
    "Christian",
    "Christop",
    "Christophe",
    "Christopher",
    "Cicero",
    "Cielo",
    "Clair",
    "Clark",
    "Claud",
    "Claude",
    "Clay",
    "Clemens",
    "Clement",
    "Cleo",
    "Cletus",
    "Cleve",
    "Cleveland",
    "Clifford",
    "Clifton",
    "Clint",
    "Clinton",
    "Clovis",
    "Cloyd",
    "Clyde",
    "Coby",
    "Cody",
    "Colby",
    "Cole",
    "Coleman",
    "Colin",
    "Collin",
    "Colt",
    "Colten",
    "Colton",
    "Columbus",
    "Conner",
    "Connor",
    "Conor",
    "Conrad",
    "Constantin",
    "Consuelo",
    "Cooper",
    "Corbin",
    "Cordelia",
    "Cordell",
    "Cornelius",
    "Cornell",
    "Cortez",
    "Cory",
    "Coty",
    "Coy",
    "Craig",
    "Crawford",
    "Cristian",
    "Cristina",
    "Cristobal",
    "Cristopher",
    "Cruz",
    "Cullen",
    "Curt",
    "Curtis",
    "Cyril",
    "Cyrus",
    "Dagmar",
    "Dale",
    "Dallas",
    "Dallin",
    "Dalton",
    "Dameon",
    "Damian",
    "Damien",
    "Damion",
    "Damon",
    "Dan",
    "Dane",
    "D\"angelo",
    "Dangelo",
    "Danial",
    "Danny",
    "Dante",
    "Daren",
    "Darian",
    "Darien",
    "Dario",
    "Darion",
    "Darius",
    "Daron",
    "Darrel",
    "Darrell",
    "Darren",
    "Darrick",
    "Darrin",
    "Darrion",
    "Darron",
    "Darryl",
    "Darwin",
    "Daryl",
    "Dashawn",
    "Dave",
    "David",
    "Davin",
    "Davion",
    "Davon",
    "Davonte",
    "Dawson",
    "Dax",
    "Dayne",
    "Dayton",
    "Dean",
    "Deangelo",
    "Declan",
    "Dedric",
    "Dedrick",
    "Dee",
    "Deion",
    "Dejon",
    "Dejuan",
    "Delaney",
    "Delbert",
    "Dell",
    "Delmer",
    "Demarco",
    "Demarcus",
    "Demario",
    "Demetrius",
    "Demond",
    "Denis",
    "Dennis",
    "Deon",
    "Deondre",
    "Deontae",
    "Deonte",
    "Dereck",
    "Derek",
    "Derick",
    "Deron",
    "Derrick",
    "Deshaun",
    "Deshawn",
    "Desmond",
    "Destin",
    "Devan",
    "Devante",
    "Deven",
    "Devin",
    "Devon",
    "Devonte",
    "Devyn",
    "Dewayne",
    "Dewitt",
    "Dexter",
    "Diamond",
    "Diego",
    "Dillan",
    "Dillon",
    "Dimitri",
    "Dino",
    "Dion",
    "Dock",
    "Domenic",
    "Domenick",
    "Domenico",
    "Domingo",
    "Dominic",
    "Don",
    "Donald",
    "Donato",
    "Donavon",
    "Donnell",
    "Donnie",
    "Donny",
    "Dorcas",
    "Dorian",
    "Doris",
    "Dorthy",
    "Doug",
    "Douglas",
    "Doyle",
    "Drake",
    "Dudley",
    "Duncan",
    "Durward",
    "Dustin",
    "Dusty",
    "Dwight",
    "Dylan",
    "Earl",
    "Earnest",
    "Easter",
    "Easton",
    "Ed",
    "Edd",
    "Eddie",
    "Edgar",
    "Edgardo",
    "Edison",
    "Edmond",
    "Edmund",
    "Eduardo",
    "Edward",
    "Edwardo",
    "Edwin",
    "Efrain",
    "Efren",
    "Einar",
    "Eino",
    "Eladio",
    "Elbert",
    "Eldon",
    "Eldred",
    "Eleazar",
    "Eli",
    "Elian",
    "Elias",
    "Eliezer",
    "Elijah",
    "Eliseo",
    "Elliot",
    "Elliott",
    "Ellis",
    "Ellsworth",
    "Elmer",
    "Elmo",
    "Elmore",
    "Eloy",
    "Elroy",
    "Elton",
    "Elvis",
    "Elwin",
    "Elwyn",
    "Emanuel",
    "Emerald",
    "Emerson",
    "Emery",
    "Emil",
    "Emile",
    "Emiliano",
    "Emilio",
    "Emmanuel",
    "Emmet",
    "Emmett",
    "Emmitt",
    "Emory",
    "Enid",
    "Enoch",
    "Enos",
    "Enrico",
    "Enrique",
    "Ephraim",
    "Eriberto",
    "Eric",
    "Erich",
    "Erick",
    "Erik",
    "Erin",
    "Erling",
    "Ernest",
    "Ernesto",
    "Ernie",
    "Ervin",
    "Erwin",
    "Esteban",
    "Estevan",
    "Ethan",
    "Ethel",
    "Eugene",
    "Eusebio",
    "Evan",
    "Evans",
    "Everardo",
    "Everett",
    "Evert",
    "Ewald",
    "Ewell",
    "Ezekiel",
    "Ezequiel",
    "Ezra",
    "Fabian",
    "Faustino",
    "Fausto",
    "Favian",
    "Federico",
    "Felipe",
    "Felix",
    "Felton",
    "Fermin",
    "Fern",
    "Fernando",
    "Ferne",
    "Fidel",
    "Filiberto",
    "Finn",
    "Flavio",
    "Fletcher",
    "Florencio",
    "Florian",
    "Floy",
    "Floyd",
    "Ford",
    "Forest",
    "Forrest",
    "Foster",
    "Francesco",
    "Francis",
    "Francisco",
    "Franco",
    "Frank",
    "Frankie",
    "Franz",
    "Fred",
    "Freddie",
    "Freddy",
    "Frederic",
    "Frederick",
    "Frederik",
    "Fredrick",
    "Fredy",
    "Freeman",
    "Friedrich",
    "Fritz",
    "Furman",
    "Gabe",
    "Gabriel",
    "Gaetano",
    "Gage",
    "Gardner",
    "Garett",
    "Garfield",
    "Garland",
    "Garnet",
    "Garnett",
    "Garret",
    "Garrett",
    "Garrick",
    "Garrison",
    "Garry",
    "Garth",
    "Gaston",
    "Gavin",
    "Gay",
    "Gayle",
    "Gaylord",
    "Gene",
    "General",
    "Gennaro",
    "Geo",
    "Geoffrey",
    "George",
    "Geovanni",
    "Geovanny",
    "Geovany",
    "Gerald",
    "Gerard",
    "Gerardo",
    "Gerhard",
    "German",
    "Gerson",
    "Gianni",
    "Gideon",
    "Gilbert",
    "Gilberto",
    "Giles",
    "Gillian",
    "Gino",
    "Giovani",
    "Giovanni",
    "Giovanny",
    "Giuseppe",
    "Glen",
    "Glennie",
    "Godfrey",
    "Golden",
    "Gonzalo",
    "Gordon",
    "Grady",
    "Graham",
    "Grant",
    "Granville",
    "Grayce",
    "Grayson",
    "Green",
    "Greg",
    "Gregg",
    "Gregorio",
    "Gregory",
    "Greyson",
    "Griffin",
    "Grover",
    "Guido",
    "Guillermo",
    "Guiseppe",
    "Gunnar",
    "Gunner",
    "Gus",
    "Gussie",
    "Gust",
    "Gustave",
    "Guy",
    "Hadley",
    "Hailey",
    "Hal",
    "Haleigh",
    "Haley",
    "Halle",
    "Hank",
    "Hans",
    "Hardy",
    "Harley",
    "Harmon",
    "Harold",
    "Harrison",
    "Harry",
    "Harvey",
    "Haskell",
    "Hassan",
    "Hayden",
    "Hayley",
    "Hazel",
    "Hazle",
    "Heber",
    "Hector",
    "Helmer",
    "Henderson",
    "Henri",
    "Henry",
    "Herbert",
    "Herman",
    "Hermann",
    "Herminio",
    "Hershel",
    "Hester",
    "Hilario",
    "Hilbert",
    "Hillard",
    "Hilton",
    "Hipolito",
    "Hiram",
    "Hobart",
    "Holden",
    "Hollis",
    "Horace",
    "Horacio",
    "Houston",
    "Howard",
    "Howell",
    "Hoyt",
    "Hubert",
    "Hudson",
    "Hugh",
    "Humberto",
    "Hunter",
    "Hyman",
    "Ian",
    "Ibrahim",
    "Ignacio",
    "Ignatius",
    "Ike",
    "Imani",
    "Immanuel",
    "Irving",
    "Irwin",
    "Isaac",
    "Isac",
    "Isadore",
    "Isai",
    "Isaiah",
    "Isaias",
    "Isidro",
    "Ismael",
    "Isom",
    "Israel",
    "Issac",
    "Izaiah",
    "Jabari",
    "Jace",
    "Jacey",
    "Jacinto",
    "Jack",
    "Jackson",
    "Jacques",
    "Jaden",
    "Jadon",
    "Jaeden",
    "Jaiden",
    "Jaime",
    "Jairo",
    "Jake",
    "Jakob",
    "Jaleel",
    "Jalen",
    "Jalon",
    "Jamaal",
    "Jamal",
    "Jamar",
    "Jamarcus",
    "Jamel",
    "Jameson",
    "Jamey",
    "Jamie",
    "Jamil",
    "Jamir",
    "Jamison",
    "Jan",
    "Janick",
    "Jaquan",
    "Jared",
    "Jaren",
    "Jarod",
    "Jaron",
    "Jarred",
    "Jarrell",
    "Jarret",
    "Jarrett",
    "Jarrod",
    "Jarvis",
    "Jasen",
    "Jasmin",
    "Jason",
    "Jasper",
    "Javier",
    "Javon",
    "Javonte",
    "Jay",
    "Jayce",
    "Jaycee",
    "Jayde",
    "Jayden",
    "Jaydon",
    "Jaylan",
    "Jaylen",
    "Jaylin",
    "Jaylon",
    "Jayme",
    "Jayson",
    "Jean",
    "Jed",
    "Jedediah",
    "Jedidiah",
    "Jeff",
    "Jefferey",
    "Jeffery",
    "Jeffrey",
    "Jeffry",
    "Jennings",
    "Jensen",
    "Jerad",
    "Jerald",
    "Jeramie",
    "Jeramy",
    "Jerel",
    "Jeremie",
    "Jeremy",
    "Jermain",
    "Jermey",
    "Jerod",
    "Jerome",
    "Jeromy",
    "Jerrell",
    "Jerrod",
    "Jerrold",
    "Jerry",
    "Jess",
    "Jesse",
    "Jessie",
    "Jessy",
    "Jesus",
    "Jett",
    "Jettie",
    "Jevon",
    "Jillian",
    "Jimmie",
    "Jimmy",
    "Jo",
    "Joan",
    "Joany",
    "Joaquin",
    "Jocelyn",
    "Joe",
    "Joel",
    "Joesph",
    "Joey",
    "Johan",
    "Johann",
    "Johathan",
    "John",
    "Johnathan",
    "Johnathon",
    "Johnnie",
    "Johnny",
    "Johnpaul",
    "Johnson",
    "Jon",
    "Jonas",
    "Jonatan",
    "Jonathan",
    "Jonathon",
    "Jordan",
    "Jordi",
    "Jordon",
    "Jordy",
    "Jordyn",
    "Jorge",
    "Jose",
    "Joseph",
    "Josh",
    "Joshua",
    "Joshuah",
    "Josiah",
    "Josue",
    "Jovan",
    "Jovani",
    "Jovanny",
    "Jovany",
    "Judah",
    "Judd",
    "Judge",
    "Judson",
    "Jules",
    "Julian",
    "Julien",
    "Julio",
    "Julius",
    "Junior",
    "Junius",
    "Justen",
    "Justice",
    "Juston",
    "Justus",
    "Justyn",
    "Juvenal",
    "Juwan",
    "Kacey",
    "Kade",
    "Kaden",
    "Kadin",
    "Kale",
    "Kaleb",
    "Kaleigh",
    "Kaley",
    "Kameron",
    "Kamren",
    "Kamron",
    "Kamryn",
    "Kane",
    "Kareem",
    "Karl",
    "Karley",
    "Karson",
    "Kay",
    "Kayden",
    "Kayleigh",
    "Kayley",
    "Keagan",
    "Keanu",
    "Keaton",
    "Keegan",
    "Keeley",
    "Keenan",
    "Keith",
    "Kellen",
    "Kelley",
    "Kelton",
    "Kelvin",
    "Ken",
    "Kendall",
    "Kendrick",
    "Kennedi",
    "Kennedy",
    "Kenneth",
    "Kennith",
    "Kenny",
    "Kenton",
    "Kenyon",
    "Keon",
    "Keshaun",
    "Keshawn",
    "Keven",
    "Kevin",
    "Kevon",
    "Keyon",
    "Keyshawn",
    "Khalid",
    "Khalil",
    "Kian",
    "Kiel",
    "Kieran",
    "Kiley",
    "Kim",
    "King",
    "Kip",
    "Kirk",
    "Kobe",
    "Koby",
    "Kody",
    "Kolby",
    "Kole",
    "Korbin",
    "Korey",
    "Kory",
    "Kraig",
    "Kris",
    "Kristian",
    "Kristofer",
    "Kristoffer",
    "Kristopher",
    "Kurt",
    "Kurtis",
    "Kyle",
    "Kyleigh",
    "Kyler",
    "Ladarius",
    "Lafayette",
    "Lamar",
    "Lambert",
    "Lamont",
    "Lance",
    "Landen",
    "Lane",
    "Laron",
    "Larry",
    "Larue",
    "Laurel",
    "Lavern",
    "Laverna",
    "Laverne",
    "Lavon",
    "Lawrence",
    "Lawson",
    "Layne",
    "Lazaro",
    "Lee",
    "Leif",
    "Leland",
    "Lemuel",
    "Lennie",
    "Lenny",
    "Leo",
    "Leon",
    "Leonard",
    "Leonardo",
    "Leone",
    "Leonel",
    "Leopold",
    "Leopoldo",
    "Lesley",
    "Lester",
    "Levi",
    "Lew",
    "Lewis",
    "Lexus",
    "Liam",
    "Lincoln",
    "Lindsey",
    "Linwood",
    "Lionel",
    "Lisandro",
    "Llewellyn",
    "Lloyd",
    "Logan",
    "Lon",
    "London",
    "Lonnie",
    "Lonny",
    "Lonzo",
    "Lorenz",
    "Lorenza",
    "Lorenzo",
    "Louie",
    "Louisa",
    "Lourdes",
    "Louvenia",
    "Lowell",
    "Loy",
    "Loyal",
    "Lucas",
    "Luciano",
    "Lucio",
    "Lucious",
    "Lucius",
    "Ludwig",
    "Luigi",
    "Luis",
    "Lukas",
    "Lula",
    "Luther",
    "Lyric",
    "Mac",
    "Macey",
    "Mack",
    "Mackenzie",
    "Madisen",
    "Madison",
    "Madyson",
    "Magnus",
    "Major",
    "Makenna",
    "Malachi",
    "Malcolm",
    "Mallory",
    "Manley",
    "Manuel",
    "Manuela",
    "Marc",
    "Marcel",
    "Marcelino",
    "Marcellus",
    "Marcelo",
    "Marco",
    "Marcos",
    "Marcus",
    "Mariano",
    "Mario",
    "Mark",
    "Markus",
    "Marley",
    "Marlin",
    "Marlon",
    "Marques",
    "Marquis",
    "Marshall",
    "Martin",
    "Marty",
    "Marvin",
    "Mason",
    "Mateo",
    "Mathew",
    "Mathias",
    "Matt",
    "Matteo",
    "Maurice",
    "Mauricio",
    "Maverick",
    "Mavis",
    "Max",
    "Maxime",
    "Maximilian",
    "Maximillian",
    "Maximo",
    "Maximus",
    "Maxine",
    "Maxwell",
    "Maynard",
    "Mckenna",
    "Mckenzie",
    "Mekhi",
    "Melany",
    "Melvin",
    "Melvina",
    "Merl",
    "Merle",
    "Merlin",
    "Merritt",
    "Mervin",
    "Micah",
    "Michael",
    "Michale",
    "Micheal",
    "Michel",
    "Miguel",
    "Mike",
    "Mikel",
    "Milan",
    "Miles",
    "Milford",
    "Miller",
    "Milo",
    "Milton",
    "Misael",
    "Mitchel",
    "Mitchell",
    "Modesto",
    "Mohamed",
    "Mohammad",
    "Mohammed",
    "Moises",
    "Monroe",
    "Monserrat",
    "Monserrate",
    "Montana",
    "Monte",
    "Monty",
    "Morgan",
    "Moriah",
    "Morris",
    "Mortimer",
    "Morton",
    "Mose",
    "Moses",
    "Moshe",
    "Muhammad",
    "Murl",
    "Murphy",
    "Murray",
    "Mustafa",
    "Myles",
    "Myrl",
    "Myron",
    "Napoleon",
    "Narciso",
    "Nash",
    "Nasir",
    "Nat",
    "Nathan",
    "Nathanael",
    "Nathanial",
    "Nathaniel",
    "Nathen",
    "Neal",
    "Ned",
    "Neil",
    "Nels",
    "Nelson",
    "Nestor",
    "Newell",
    "Newton",
    "Nicholas",
    "Nicholaus",
    "Nick",
    "Nicklaus",
    "Nickolas",
    "Nico",
    "Nicola",
    "Nicolas",
    "Nigel",
    "Nikko",
    "Niko",
    "Nikolas",
    "Nils",
    "Noah",
    "Noble",
    "Noe",
    "Noel",
    "Nolan",
    "Norbert",
    "Norberto",
    "Norris",
    "Norval",
    "Norwood",
    "Obie",
    "Oda",
    "Odell",
    "Okey",
    "Ola",
    "Olaf",
    "Ole",
    "Olen",
    "Olin",
    "Oliver",
    "Omari",
    "Omer",
    "Oral",
    "Oran",
    "Oren",
    "Orin",
    "Orion",
    "Orland",
    "Orlando",
    "Orlo",
    "Orrin",
    "Orval",
    "Orville",
    "Osbaldo",
    "Osborne",
    "Oscar",
    "Osvaldo",
    "Oswald",
    "Oswaldo",
    "Otho",
    "Otis",
    "Ottis",
    "Otto",
    "Owen",
    "Pablo",
    "Paolo",
    "Paris",
    "Parker",
    "Patrick",
    "Paul",
    "Paxton",
    "Payton",
    "Pedro",
    "Percival",
    "Percy",
    "Perry",
    "Pete",
    "Peter",
    "Peyton",
    "Philip",
    "Pierce",
    "Pierre",
    "Pietro",
    "Porter",
    "Presley",
    "Preston",
    "Price",
    "Prince",
    "Quentin",
    "Quincy",
    "Quinn",
    "Quinten",
    "Quinton",
    "Rafael",
    "Raheem",
    "Rahul",
    "Raleigh",
    "Ralph",
    "Ramiro",
    "Ramon",
    "Randal",
    "Randall",
    "Randi",
    "Randy",
    "Ransom",
    "Raoul",
    "Raphael",
    "Rashad",
    "Rashawn",
    "Rasheed",
    "Raul",
    "Raven",
    "Ray",
    "Raymond",
    "Raymundo",
    "Reagan",
    "Reece",
    "Reed",
    "Reese",
    "Regan",
    "Reggie",
    "Reginald",
    "Reid",
    "Reilly",
    "Reinhold",
    "Remington",
    "Rene",
    "Reuben",
    "Rex",
    "Rey",
    "Reyes",
    "Reymundo",
    "Reynold",
    "Rhett",
    "Rhiannon",
    "Ricardo",
    "Richard",
    "Richie",
    "Richmond",
    "Rick",
    "Rickey",
    "Rickie",
    "Ricky",
    "Rico",
    "Rigoberto",
    "Riley",
    "Robb",
    "Robbie",
    "Robert",
    "Roberto",
    "Robin",
    "Rocio",
    "Rocky",
    "Rod",
    "Roderick",
    "Rodger",
    "Rodolfo",
    "Rodrick",
    "Rodrigo",
    "Roel",
    "Rogelio",
    "Roger",
    "Rogers",
    "Rolando",
    "Rollin",
    "Roman",
    "Ron",
    "Ronaldo",
    "Ronny",
    "Roosevelt",
    "Rory",
    "Rosario",
    "Roscoe",
    "Rosendo",
    "Ross",
    "Rowan",
    "Rowland",
    "Roy",
    "Royal",
    "Royce",
    "Ruben",
    "Rudolph",
    "Rudy",
    "Rupert",
    "Russ",
    "Russel",
    "Russell",
    "Rusty",
    "Ryan",
    "Ryann",
    "Ryder",
    "Rylan",
    "Ryleigh",
    "Ryley",
    "Sage",
    "Saige",
    "Salvador",
    "Salvatore",
    "Sam",
    "Samir",
    "Sammie",
    "Sammy",
    "Samson",
    "Sanford",
    "Santa",
    "Santiago",
    "Santino",
    "Santos",
    "Saul",
    "Savion",
    "Schuyler",
    "Scot",
    "Scottie",
    "Scotty",
    "Seamus",
    "Sean",
    "Sebastian",
    "Sedrick",
    "Selmer",
    "Seth",
    "Shad",
    "Shane",
    "Shaun",
    "Shawn",
    "Shayne",
    "Sheldon",
    "Sheridan",
    "Sherman",
    "Sherwood",
    "Sid",
    "Sidney",
    "Sigmund",
    "Sigrid",
    "Sigurd",
    "Silas",
    "Sim",
    "Simeon",
    "Skye",
    "Skylar",
    "Sofia",
    "Soledad",
    "Solon",
    "Sonny",
    "Spencer",
    "Stan",
    "Stanford",
    "Stanley",
    "Stanton",
    "Stefan",
    "Stephan",
    "Stephen",
    "Stephon",
    "Sterling",
    "Steve",
    "Stevie",
    "Stewart",
    "Stone",
    "Stuart",
    "Sven",
    "Sydney",
    "Sylvan",
    "Sylvester",
    "Tad",
    "Talon",
    "Tanner",
    "Tate",
    "Tatum",
    "Taurean",
    "Tavares",
    "Taylor",
    "Ted",
    "Terence",
    "Terrance",
    "Terrell",
    "Terrence",
    "Terrill",
    "Terry",
    "Tevin",
    "Thad",
    "Thaddeus",
    "Theo",
    "Theodore",
    "Theron",
    "Thomas",
    "Thurman",
    "Tillman",
    "Timmothy",
    "Timmy",
    "Timothy",
    "Tito",
    "Titus",
    "Tobin",
    "Toby",
    "Tod",
    "Tom",
    "Tomas",
    "Tommie",
    "Toney",
    "Toni",
    "Tony",
    "Torey",
    "Torrance",
    "Torrey",
    "Toy",
    "Trace",
    "Tracey",
    "Travis",
    "Travon",
    "Tre",
    "Tremaine",
    "Tremayne",
    "Trent",
    "Trenton",
    "Trever",
    "Trevion",
    "Trevor",
    "Trey",
    "Tristian",
    "Tristin",
    "Triston",
    "Troy",
    "Trystan",
    "Turner",
    "Tyler",
    "Tyree",
    "Tyreek",
    "Tyrel",
    "Tyrell",
    "Tyrese",
    "Tyrique",
    "Tyshawn",
    "Tyson",
    "Ubaldo",
    "Ulices",
    "Ulises",
    "Unique",
    "Urban",
    "Uriah",
    "Uriel",
    "Valentin",
    "Van",
    "Vance",
    "Vaughn",
    "Vern",
    "Verner",
    "Vernon",
    "Vicente",
    "Victor",
    "Vidal",
    "Vince",
    "Vincent",
    "Vincenzo",
    "Vinnie",
    "Virgil",
    "Vito",
    "Vladimir",
    "Wade",
    "Waino",
    "Waldo",
    "Walker",
    "Wallace",
    "Walter",
    "Walton",
    "Ward",
    "Warren",
    "Watson",
    "Waylon",
    "Wayne",
    "Webster",
    "Weldon",
    "Wellington",
    "Wendell",
    "Werner",
    "Westley",
    "Weston",
    "Wilber",
    "Wilbert",
    "Wilburn",
    "Wiley",
    "Wilford",
    "Wilfred",
    "Wilfredo",
    "Wilfrid",
    "Wilhelm",
    "Will",
    "Willard",
    "William",
    "Willis",
    "Willy",
    "Wilmer",
    "Wilson",
    "Wilton",
    "Winfield",
    "Winston",
    "Woodrow",
    "Wyatt",
    "Wyman",
    "Xavier",
    "Xzavier",
    "Xander",
    "Zachariah",
    "Zachary",
    "Zachery",
    "Zack",
    "Zackary",
    "Zackery",
    "Zakary",
    "Zander",
    "Zane",
    "Zechariah",
    "Zion"
  ]
  @first_name_female [
    "Abbott",
    "Abernathy",
    "Abshire",
    "Adams",
    "Altenwerth",
    "Anderson",
    "Ankunding",
    "Armstrong",
    "Auer",
    "Aufderhar",
    "Bahringer",
    "Bailey",
    "Balistreri",
    "Barrows",
    "Bartell",
    "Bartoletti",
    "Barton",
    "Bashirian",
    "Batz",
    "Bauch",
    "Baumbach",
    "Bayer",
    "Beahan",
    "Beatty",
    "Bechtelar",
    "Becker",
    "Bednar",
    "Beer",
    "Beier",
    "Berge",
    "Bergnaum",
    "Bergstrom",
    "Bernhard",
    "Bernier",
    "Bins",
    "Blanda",
    "Blick",
    "Block",
    "Bode",
    "Boehm",
    "Bogan",
    "Bogisich",
    "Borer",
    "Bosco",
    "Botsford",
    "Boyer",
    "Boyle",
    "Bradtke",
    "Brakus",
    "Braun",
    "Breitenberg",
    "Brekke",
    "Brown",
    "Bruen",
    "Buckridge",
    "Carroll",
    "Carter",
    "Cartwright",
    "Casper",
    "Cassin",
    "Champlin",
    "Christiansen",
    "Cole",
    "Collier",
    "Collins",
    "Conn",
    "Connelly",
    "Conroy",
    "Considine",
    "Corkery",
    "Cormier",
    "Corwin",
    "Cremin",
    "Crist",
    "Crona",
    "Cronin",
    "Crooks",
    "Cruickshank",
    "Cummerata",
    "Cummings",
    "Dach",
    "D\"Amore",
    "Daniel",
    "Dare",
    "Daugherty",
    "Davis",
    "Deckow",
    "Denesik",
    "Dibbert",
    "Dickens",
    "Dicki",
    "Dickinson",
    "Dietrich",
    "Donnelly",
    "Dooley",
    "Douglas",
    "Doyle",
    "DuBuque",
    "Durgan",
    "Ebert",
    "Effertz",
    "Eichmann",
    "Emard",
    "Emmerich",
    "Erdman",
    "Ernser",
    "Fadel",
    "Fahey",
    "Farrell",
    "Fay",
    "Feeney",
    "Feest",
    "Feil",
    "Ferry",
    "Fisher",
    "Flatley",
    "Frami",
    "Franecki",
    "Friesen",
    "Fritsch",
    "Funk",
    "Gaylord",
    "Gerhold",
    "Gerlach",
    "Gibson",
    "Gislason",
    "Gleason",
    "Gleichner",
    "Glover",
    "Goldner",
    "Goodwin",
    "Gorczany",
    "Gottlieb",
    "Goyette",
    "Grady",
    "Graham",
    "Grant",
    "Green",
    "Greenfelder",
    "Greenholt",
    "Grimes",
    "Gulgowski",
    "Gusikowski",
    "Gutkowski",
    "Gutmann",
    "Haag",
    "Hackett",
    "Hagenes",
    "Hahn",
    "Haley",
    "Halvorson",
    "Hamill",
    "Hammes",
    "Hand",
    "Hane",
    "Hansen",
    "Harber",
    "Harris",
    "Hartmann",
    "Harvey",
    "Hauck",
    "Hayes",
    "Heaney",
    "Heathcote",
    "Hegmann",
    "Heidenreich",
    "Heller",
    "Herman",
    "Hermann",
    "Hermiston",
    "Herzog",
    "Hessel",
    "Hettinger",
    "Hickle",
    "Hill",
    "Hills",
    "Hilpert",
    "Hintz",
    "Hirthe",
    "Hodkiewicz",
    "Hoeger",
    "Homenick",
    "Hoppe",
    "Howe",
    "Howell",
    "Hudson",
    "Huel",
    "Huels",
    "Hyatt",
    "Jacobi",
    "Jacobs",
    "Jacobson",
    "Jakubowski",
    "Jaskolski",
    "Jast",
    "Jenkins",
    "Jerde",
    "Johns",
    "Johnson",
    "Johnston",
    "Jones",
    "Kassulke",
    "Kautzer",
    "Keebler",
    "Keeling",
    "Kemmer",
    "Kerluke",
    "Kertzmann",
    "Kessler",
    "Kiehn",
    "Kihn",
    "Kilback",
    "King",
    "Kirlin",
    "Klein",
    "Kling",
    "Klocko",
    "Koch",
    "Koelpin",
    "Koepp",
    "Kohler",
    "Konopelski",
    "Koss",
    "Kovacek",
    "Kozey",
    "Krajcik",
    "Kreiger",
    "Kris",
    "Kshlerin",
    "Kub",
    "Kuhic",
    "Kuhlman",
    "Kuhn",
    "Kulas",
    "Kunde",
    "Kunze",
    "Kuphal",
    "Kutch",
    "Kuvalis",
    "Labadie",
    "Lakin",
    "Lang",
    "Langosh",
    "Langworth",
    "Larkin",
    "Larson",
    "Leannon",
    "Lebsack",
    "Ledner",
    "Leffler",
    "Legros",
    "Lehner",
    "Lemke",
    "Lesch",
    "Leuschke",
    "Lind",
    "Lindgren",
    "Littel",
    "Little",
    "Lockman",
    "Lowe",
    "Lubowitz",
    "Lueilwitz",
    "Luettgen",
    "Lynch",
    "Macejkovic",
    "Maggio",
    "Mann",
    "Mante",
    "Marks",
    "Marquardt",
    "Marvin",
    "Mayer",
    "Mayert",
    "McClure",
    "McCullough",
    "McDermott",
    "McGlynn",
    "McKenzie",
    "McLaughlin",
    "Medhurst",
    "Mertz",
    "Metz",
    "Miller",
    "Mills",
    "Mitchell",
    "Moen",
    "Mohr",
    "Monahan",
    "Moore",
    "Morar",
    "Morissette",
    "Mosciski",
    "Mraz",
    "Mueller",
    "Muller",
    "Murazik",
    "Murphy",
    "Murray",
    "Nader",
    "Nicolas",
    "Nienow",
    "Nikolaus",
    "Nitzsche",
    "Nolan",
    "Oberbrunner",
    "O\"Connell",
    "O\"Conner",
    "O\"Hara",
    "O\"Keefe",
    "O\"Kon",
    "Okuneva",
    "Olson",
    "Ondricka",
    "O\"Reilly",
    "Orn",
    "Ortiz",
    "Osinski",
    "Pacocha",
    "Padberg",
    "Pagac",
    "Parisian",
    "Parker",
    "Paucek",
    "Pfannerstill",
    "Pfeffer",
    "Pollich",
    "Pouros",
    "Powlowski",
    "Predovic",
    "Price",
    "Prohaska",
    "Prosacco",
    "Purdy",
    "Quigley",
    "Quitzon",
    "Rath",
    "Ratke",
    "Rau",
    "Raynor",
    "Reichel",
    "Reichert",
    "Reilly",
    "Reinger",
    "Rempel",
    "Renner",
    "Reynolds",
    "Rice",
    "Rippin",
    "Ritchie",
    "Robel",
    "Roberts",
    "Rodriguez",
    "Rogahn",
    "Rohan",
    "Rolfson",
    "Romaguera",
    "Roob",
    "Rosenbaum",
    "Rowe",
    "Ruecker",
    "Runolfsdottir",
    "Runolfsson",
    "Runte",
    "Russel",
    "Rutherford",
    "Ryan",
    "Sanford",
    "Satterfield",
    "Sauer",
    "Sawayn",
    "Schaden",
    "Schaefer",
    "Schamberger",
    "Schiller",
    "Schimmel",
    "Schinner",
    "Schmeler",
    "Schmidt",
    "Schmitt",
    "Schneider",
    "Schoen",
    "Schowalter",
    "Schroeder",
    "Schulist",
    "Schultz",
    "Schumm",
    "Schuppe",
    "Schuster",
    "Senger",
    "Shanahan",
    "Shields",
    "Simonis",
    "Sipes",
    "Skiles",
    "Smith",
    "Smitham",
    "Spencer",
    "Spinka",
    "Sporer",
    "Stamm",
    "Stanton",
    "Stark",
    "Stehr",
    "Steuber",
    "Stiedemann",
    "Stokes",
    "Stoltenberg",
    "Stracke",
    "Streich",
    "Stroman",
    "Strosin",
    "Swaniawski",
    "Swift",
    "Terry",
    "Thiel",
    "Thompson",
    "Tillman",
    "Torp",
    "Torphy",
    "Towne",
    "Toy",
    "Trantow",
    "Tremblay",
    "Treutel",
    "Tromp",
    "Turcotte",
    "Turner",
    "Ullrich",
    "Upton",
    "Vandervort",
    "Veum",
    "Volkman",
    "Von",
    "VonRueden",
    "Waelchi",
    "Walker",
    "Walsh",
    "Walter",
    "Ward",
    "Waters",
    "Watsica",
    "Weber",
    "Wehner",
    "Weimann",
    "Weissnat",
    "Welch",
    "West",
    "White",
    "Wiegand",
    "Wilderman",
    "Wilkinson",
    "Will",
    "Williamson",
    "Willms",
    "Windler",
    "Wintheiser",
    "Wisoky",
    "Wisozk",
    "Witting",
    "Wiza",
    "Wolf",
    "Wolff",
    "Wuckert",
    "Wunsch",
    "Wyman",
    "Yost",
    "Yundt",
    "Zboncak",
    "Zemlak",
    "Ziemann",
    "Zieme",
    "Zulauf"
  ]

  @last_name [
    "Abbott",
    "Abernathy",
    "Abshire",
    "Adams",
    "Altenwerth",
    "Anderson",
    "Ankunding",
    "Armstrong",
    "Auer",
    "Aufderhar",
    "Bahringer",
    "Bailey",
    "Balistreri",
    "Barrows",
    "Bartell",
    "Bartoletti",
    "Barton",
    "Bashirian",
    "Batz",
    "Bauch",
    "Baumbach",
    "Bayer",
    "Beahan",
    "Beatty",
    "Bechtelar",
    "Becker",
    "Bednar",
    "Beer",
    "Beier",
    "Berge",
    "Bergnaum",
    "Bergstrom",
    "Bernhard",
    "Bernier",
    "Bins",
    "Blanda",
    "Blick",
    "Block",
    "Bode",
    "Boehm",
    "Bogan",
    "Bogisich",
    "Borer",
    "Bosco",
    "Botsford",
    "Boyer",
    "Boyle",
    "Bradtke",
    "Brakus",
    "Braun",
    "Breitenberg",
    "Brekke",
    "Brown",
    "Bruen",
    "Buckridge",
    "Carroll",
    "Carter",
    "Cartwright",
    "Casper",
    "Cassin",
    "Champlin",
    "Christiansen",
    "Cole",
    "Collier",
    "Collins",
    "Conn",
    "Connelly",
    "Conroy",
    "Considine",
    "Corkery",
    "Cormier",
    "Corwin",
    "Cremin",
    "Crist",
    "Crona",
    "Cronin",
    "Crooks",
    "Cruickshank",
    "Cummerata",
    "Cummings",
    "Dach",
    "D\"Amore",
    "Daniel",
    "Dare",
    "Daugherty",
    "Davis",
    "Deckow",
    "Denesik",
    "Dibbert",
    "Dickens",
    "Dicki",
    "Dickinson",
    "Dietrich",
    "Donnelly",
    "Dooley",
    "Douglas",
    "Doyle",
    "DuBuque",
    "Durgan",
    "Ebert",
    "Effertz",
    "Eichmann",
    "Emard",
    "Emmerich",
    "Erdman",
    "Ernser",
    "Fadel",
    "Fahey",
    "Farrell",
    "Fay",
    "Feeney",
    "Feest",
    "Feil",
    "Ferry",
    "Fisher",
    "Flatley",
    "Frami",
    "Franecki",
    "Friesen",
    "Fritsch",
    "Funk",
    "Gaylord",
    "Gerhold",
    "Gerlach",
    "Gibson",
    "Gislason",
    "Gleason",
    "Gleichner",
    "Glover",
    "Goldner",
    "Goodwin",
    "Gorczany",
    "Gottlieb",
    "Goyette",
    "Grady",
    "Graham",
    "Grant",
    "Green",
    "Greenfelder",
    "Greenholt",
    "Grimes",
    "Gulgowski",
    "Gusikowski",
    "Gutkowski",
    "Gutmann",
    "Haag",
    "Hackett",
    "Hagenes",
    "Hahn",
    "Haley",
    "Halvorson",
    "Hamill",
    "Hammes",
    "Hand",
    "Hane",
    "Hansen",
    "Harber",
    "Harris",
    "Hartmann",
    "Harvey",
    "Hauck",
    "Hayes",
    "Heaney",
    "Heathcote",
    "Hegmann",
    "Heidenreich",
    "Heller",
    "Herman",
    "Hermann",
    "Hermiston",
    "Herzog",
    "Hessel",
    "Hettinger",
    "Hickle",
    "Hill",
    "Hills",
    "Hilpert",
    "Hintz",
    "Hirthe",
    "Hodkiewicz",
    "Hoeger",
    "Homenick",
    "Hoppe",
    "Howe",
    "Howell",
    "Hudson",
    "Huel",
    "Huels",
    "Hyatt",
    "Jacobi",
    "Jacobs",
    "Jacobson",
    "Jakubowski",
    "Jaskolski",
    "Jast",
    "Jenkins",
    "Jerde",
    "Johns",
    "Johnson",
    "Johnston",
    "Jones",
    "Kassulke",
    "Kautzer",
    "Keebler",
    "Keeling",
    "Kemmer",
    "Kerluke",
    "Kertzmann",
    "Kessler",
    "Kiehn",
    "Kihn",
    "Kilback",
    "King",
    "Kirlin",
    "Klein",
    "Kling",
    "Klocko",
    "Koch",
    "Koelpin",
    "Koepp",
    "Kohler",
    "Konopelski",
    "Koss",
    "Kovacek",
    "Kozey",
    "Krajcik",
    "Kreiger",
    "Kris",
    "Kshlerin",
    "Kub",
    "Kuhic",
    "Kuhlman",
    "Kuhn",
    "Kulas",
    "Kunde",
    "Kunze",
    "Kuphal",
    "Kutch",
    "Kuvalis",
    "Labadie",
    "Lakin",
    "Lang",
    "Langosh",
    "Langworth",
    "Larkin",
    "Larson",
    "Leannon",
    "Lebsack",
    "Ledner",
    "Leffler",
    "Legros",
    "Lehner",
    "Lemke",
    "Lesch",
    "Leuschke",
    "Lind",
    "Lindgren",
    "Littel",
    "Little",
    "Lockman",
    "Lowe",
    "Lubowitz",
    "Lueilwitz",
    "Luettgen",
    "Lynch",
    "Macejkovic",
    "Maggio",
    "Mann",
    "Mante",
    "Marks",
    "Marquardt",
    "Marvin",
    "Mayer",
    "Mayert",
    "McClure",
    "McCullough",
    "McDermott",
    "McGlynn",
    "McKenzie",
    "McLaughlin",
    "Medhurst",
    "Mertz",
    "Metz",
    "Miller",
    "Mills",
    "Mitchell",
    "Moen",
    "Mohr",
    "Monahan",
    "Moore",
    "Morar",
    "Morissette",
    "Mosciski",
    "Mraz",
    "Mueller",
    "Muller",
    "Murazik",
    "Murphy",
    "Murray",
    "Nader",
    "Nicolas",
    "Nienow",
    "Nikolaus",
    "Nitzsche",
    "Nolan",
    "Oberbrunner",
    "O\"Connell",
    "O\"Conner",
    "O\"Hara",
    "O\"Keefe",
    "O\"Kon",
    "Okuneva",
    "Olson",
    "Ondricka",
    "O\"Reilly",
    "Orn",
    "Ortiz",
    "Osinski",
    "Pacocha",
    "Padberg",
    "Pagac",
    "Parisian",
    "Parker",
    "Paucek",
    "Pfannerstill",
    "Pfeffer",
    "Pollich",
    "Pouros",
    "Powlowski",
    "Predovic",
    "Price",
    "Prohaska",
    "Prosacco",
    "Purdy",
    "Quigley",
    "Quitzon",
    "Rath",
    "Ratke",
    "Rau",
    "Raynor",
    "Reichel",
    "Reichert",
    "Reilly",
    "Reinger",
    "Rempel",
    "Renner",
    "Reynolds",
    "Rice",
    "Rippin",
    "Ritchie",
    "Robel",
    "Roberts",
    "Rodriguez",
    "Rogahn",
    "Rohan",
    "Rolfson",
    "Romaguera",
    "Roob",
    "Rosenbaum",
    "Rowe",
    "Ruecker",
    "Runolfsdottir",
    "Runolfsson",
    "Runte",
    "Russel",
    "Rutherford",
    "Ryan",
    "Sanford",
    "Satterfield",
    "Sauer",
    "Sawayn",
    "Schaden",
    "Schaefer",
    "Schamberger",
    "Schiller",
    "Schimmel",
    "Schinner",
    "Schmeler",
    "Schmidt",
    "Schmitt",
    "Schneider",
    "Schoen",
    "Schowalter",
    "Schroeder",
    "Schulist",
    "Schultz",
    "Schumm",
    "Schuppe",
    "Schuster",
    "Senger",
    "Shanahan",
    "Shields",
    "Simonis",
    "Sipes",
    "Skiles",
    "Smith",
    "Smitham",
    "Spencer",
    "Spinka",
    "Sporer",
    "Stamm",
    "Stanton",
    "Stark",
    "Stehr",
    "Steuber",
    "Stiedemann",
    "Stokes",
    "Stoltenberg",
    "Stracke",
    "Streich",
    "Stroman",
    "Strosin",
    "Swaniawski",
    "Swift",
    "Terry",
    "Thiel",
    "Thompson",
    "Tillman",
    "Torp",
    "Torphy",
    "Towne",
    "Toy",
    "Trantow",
    "Tremblay",
    "Treutel",
    "Tromp",
    "Turcotte",
    "Turner",
    "Ullrich",
    "Upton",
    "Vandervort",
    "Veum",
    "Volkman",
    "Von",
    "VonRueden",
    "Waelchi",
    "Walker",
    "Walsh",
    "Walter",
    "Ward",
    "Waters",
    "Watsica",
    "Weber",
    "Wehner",
    "Weimann",
    "Weissnat",
    "Welch",
    "West",
    "White",
    "Wiegand",
    "Wilderman",
    "Wilkinson",
    "Will",
    "Williamson",
    "Willms",
    "Windler",
    "Wintheiser",
    "Wisoky",
    "Wisozk",
    "Witting",
    "Wiza",
    "Wolf",
    "Wolff",
    "Wuckert",
    "Wunsch",
    "Wyman",
    "Yost",
    "Yundt",
    "Zboncak",
    "Zemlak",
    "Ziemann",
    "Zieme",
    "Zulauf"
  ]

  @title_male ["Mr.", "Dr.", "Prof."]

  @title_female ["Mrs.", "Ms.", "Miss", "Dr.", "Prof."]

  @suffix ["Jr.", "Sr.", "I", "II", "III", "IV", "V", "MD", "DDS", "PhD", "DVM"]

  def suffix(), do: Generator.random_element(@suffix)
  def title_male(), do: Generator.random_element(@title_male)
  def title_female(), do: Generator.random_element(@title_female)

  def name(gender) when gender == "male" do
    first_name(gender) <> " " <> last_name()
  end

  def first_name(gender) when gender == "male" do
    Generator.random_element(@first_name_male)
  end

  def first_name(gender) when gender == "female" do
    Generator.random_element(@first_name_female)
  end

  def first_name() do
    [
      first_name("male"),
      first_name("female")
    ]
    |> Generator.random_element()
  end

  def last_name() do
    Generator.random_element(@last_name)
  end
end
