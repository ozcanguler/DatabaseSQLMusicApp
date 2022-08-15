-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2022 at 07:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--
CREATE DATABASE IF NOT EXISTS `music` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `music`;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `ID` int(11) NOT NULL,
  `ALBUM_TITLE` varchar(1000) NOT NULL,
  `ARTIST` varchar(1000) NOT NULL,
  `YEAR` year(4) NOT NULL,
  `IMAGE_NAME` varchar(1000) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`ID`, `ALBUM_TITLE`, `ARTIST`, `YEAR`, `IMAGE_NAME`, `DESCRIPTION`) VALUES
(1, 'Greatest Hits', 'Queen', 1981, 'https://upload.wikimedia.org/wikipedia/en/thumb/0/02/Queen_Greatest_Hits.png/220px-Queen_Greatest_Hits.png', 'Greatest Hits is a compilation album by the British rock band Queen, released worldwide on 26 October 1981. The album consisted of Queen\'s biggest hits since their first chart appearance in 1974 with \"Seven Seas of Rhye\", up to their 1980 hit \"Flash\" (though in some countries \"Under Pressure\", the band\'s 1981 chart-topper with David Bowie, was included). There was no universal track listing or cover art for the album, and each territory\'s tracks were dependent on what singles had been released there and which were successful. In 1992, the US version of the album Classic Queen was released following the band\'s rekindled popularity in the nation.'),
(2, 'Greatest Hits', 'Pitbull', 2017, 'https://m.media-amazon.com/images/I/612RxKBENvL._SX425_.jpg', 'Greatest Hits is a greatest hits album by American rapper Pitbull. It was released on December 1, 2017, by RCA Records. The compilation consists of songs released between 2009 and 2014. In June 2022, the album peaked at number 108 on the US Billboard 200.'),
(3, 'Shakira', 'Shakira', 2014, 'https://images-na.ssl-images-amazon.com/images/I/51SqN+6UTSL._SY344_BO1,204,203,200_.jpg', 'Shakira is the tenth studio album and fourth English album overall by Colombian singer and songwriter Shakira, released on 21 March 2014 by RCA Records. It is her first English-language album since her eighth studio album, She Wolf (2009). Shakira revealed in November 2011 that she had begun work on the album, which continued into 2013. The album was initially set to be released in 2012, but was delayed because of Shakira\'s pregnancy and scrapped most of those songs and started making new ones. Since starting the album, Shakira departed Epic Records, signed a new management deal with Roc Nation and subsequently signed to Epic\'s sister label, RCA Records.'),
(4, 'True Blue', 'Madonna', 1986, 'https://m.media-amazon.com/images/I/7194R8FlmrL._SX425_.jpg', 'True Blue is the third studio album by American singer-songwriter Madonna, released on June 30, 1986, by Sire Records. She co-wrote and produced the entire album with Stephen Bray and Patrick Leonard. True Blue deals with her visions of love, work, dreams as well as disappointments, and was inspired by her then husband Sean Penn, to whom Madonna dedicated the album. Musically, the songs on the album took a different direction from her previous endeavours, incorporating classical music in order to engage an older audience who had been skeptical of her music.'),
(5, 'Jolene', 'Dolly Parton', 1974, 'https://m.media-amazon.com/images/I/71mvq7YMbCL._SS500_.jpg', 'Jolene is the thirteenth solo studio album by Dolly Parton. It was released on February 4, 1974, by RCA Victor. The title track, \"Jolene\", tells the tale of a housewife confronting a beautiful seductress who she believes is having an affair with her husband. It became Parton\'s second solo number-one country single; it also was a moderate pop hit for her, and also did well in the United Kingdom. Since the introduction of downloads to the Official Chart in 2005, it has amassed 255,300 downloads and 6.68 million streams. It has been covered by numerous performers.'),
(6, 'She Wolf', 'Shakira', 2009, 'https://m.media-amazon.com/images/I/81+jLCslGrL._SX425_.jpg', 'She Wolf (Spanish: Loba) is the eighth studio album and third English-language album by Colombian singer-songwriter Shakira. It was released on 9 October 2009, by Epic Records and Sony Music Latin. As executive producers, Shakira and Amanda Ghost enlisted collaborators including The Neptunes, John Hill, Wyclef Jean, Lukas Burton, Future Cut, Jerry Duplessis and Timbaland. Musically, the record shifts from her traditional Latin pop and pop rock musical styles, instead exploring electropop, with influences of folk and world music. The lyrical themes of the album mostly focus on love and relationships and were based on the conversations Shakira had with her friends.'),
(7, 'Oral Fixation', 'Shakira', 2005, 'https://m.media-amazon.com/images/I/71zZNCwkGNL._SX425_.jpg', 'Oral Fixation, Vol. 2 (Spanish: Fijación Oral, Vol. 2) is the seventh studio album and second English language album by Colombian singer and songwriter Shakira, released on 28 November 2005, by Epic Records. After attaining international success with her fifth studio effort, Laundry Service (2001), Shakira decided to create a two-part follow-up record. She released the project as the follow-up to her sixth studio effort Fijación Oral, Vol. 1, with which she had attained international success five months prior. As co-producer, Shakira enlisted producers including previous collaborators Gustavo Cerati, Lester Mendez, Luis Fernando Ochoa and Rick Rubin to work alongside newer partners Jerry Duplessis, Wyclef Jean, Tim Mitchell and The Matrix.'),
(8, 'Laundry Service', 'Shakira', 2001, 'https://m.media-amazon.com/images/I/81cRVptYAdL._SX425_.jpg', 'Laundry Service (Spanish: Servicio de Lavandería) is the fifth studio album and first English-language album by Colombian singer Shakira, globally released on 13 November 2001 by Epic Records. It is her first album to be primarily recorded in English. After the release of her fourth studio album Dónde Están los Ladrones?, which became a success in Latin America, Spain and the Latin community in the United States, Shakira was encouraged by American singer Gloria Estefan to record songs in English as she believed the singer had the potential to crossover into the English-language pop market. Shakira was initially hesitant to undertake the project, but later decided to learn English well enough to be able to write songs in the language herself. The title of the album was chosen to reflect Shakira\'s views on love and music. It was also released as Servicio de Lavandería in Hispanic regions in January 2002. Musically, Laundry Service is primarily a pop rock record but it also experiments with a variety of other musical styles, including Andean music, dance-pop, Middle Eastern music, rock and roll and tango music. The lyrical theme of the album is mostly based around love and romance. Every song on the album was written and produced by Shakira under the guidance of Emilio Estefan.'),
(9, 'El Dorado World Tour', 'Shakira', 2018, 'https://m.media-amazon.com/images/I/81Xwh5iHRRL._SS500_.jpg', 'The El Dorado World Tour was the sixth world tour by Colombian singer and songwriter Shakira, in support of her diamond certified eleventh studio album, El Dorado. Comprising a total of 54 shows, the tour visited Europe, Asia, North America and Latin America. It was her first tour in seven years, the last being The Sun Comes Out World Tour. The tour began on 3 June 2018, in Hamburg, Germany and ended on 3 November 2018 in Bogotá, Colombia. The tour was set to begin in November 2017, but due to a haemorrhage at Shakira\'s right vocal chord acquired at her last round of rehearsals, the entire tour was postponed to start mid-2018.'),
(10, 'Libertad 548', 'Pitbull', 2019, 'https://m.media-amazon.com/images/I/71tQdubrjFL._SS500_.jpg', '\"Get Ready\" is a song recorded by American recording artist Pitbull for his eleventh studio album Libertad 548 (2019). The song features guest vocals from American country singer Blake Shelton, and the single version features additional guitar elements from Aerosmith band member Joe Perry. It was written by Pitbull, Shelton, José Carlos Garcia, Xenia Ghali, Jorge Gomez, Huddie Ledbetter, Jimmy Thörnfeldt, and Fernando Zulueta. It was released to American radio stations for airplay on February 7, 2020 as the album\'s fourth single.');

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `ID` int(11) NOT NULL,
  `track_title` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `lyrics` text DEFAULT NULL,
  `album_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`ID`, `track_title`, `number`, `video_url`, `lyrics`, `album_ID`) VALUES
(1, 'Bohemian Rhapsody', 1, 'https://www.youtube.com/watch?v=fJ9rUzIMcZQ', 'Is this the real life?\r\nIs this just fantasy?\r\nCaught in a landside,\r\nNo escape from reality\r\nOpen your eyes,\r\nLook up to the skies and see,\r\nI\'m just a poor boy, I need no sympathy,\r\nBecause I\'m easy come, easy go,\r\nLittle high, little low,\r\nAny way the wind blows doesn\'t really matter to\r\nMe, to me\r\nMamaaa,\r\nJust killed a man,\r\nPut a gun against his head, pulled my trigger,\r\nNow he\'s dead\r\nMamaaa, life had just begun,\r\nBut now I\'ve gone and thrown it all away\r\nMama, oooh,\r\nDidn\'t mean to make you cry,\r\nIf I\'m not back again this time tomorrow,\r\nCarry on, carry on as if nothing really matters\r\nToo late, my time has come,\r\nSends shivers down my spine, body\'s aching all\r\nThe time\r\nGoodbye, everybody, I\'ve got to go,\r\nGotta leave you all behind and face the truth\r\nMama, oooh\r\nI don\'t want to die,\r\nI sometimes wish I\'d never been born at all.\r\nI see a little silhouetto of a man,\r\nScaramouch, Scaramouch, will you do the Fandango!\r\nThunderbolts and lightning, very, very frightening me\r\nGalileo, Galileo\r\nGalileo, Galileo\r\nGalileo, Figaro - magnificoo\r\nI\'m just a poor boy nobody loves me\r\nHe\'s just a poor boy from a poor family,\r\nSpare him his life from this monstrosity\r\nEasy come, easy go, will you let me go\r\nBismillah! No, we will not let you go\r\n(Let him go!) Bismillah! We will not let you go\r\n(Let him go!) Bismillah! We will not let you go\r\n(Let me go) Will not let you go\r\n(Let me go)(Never) Never let you go\r\n(Let me go) (Never) let you go (Let me go) Ah\r\nNo, no, no, no, no, no, no\r\nOh mama mia, mama mia, mama mia, let me go\r\nBeelzebub has a devil put aside for me, for me,\r\nFor meee\r\nSo you think you can stop me and spit in my eye\r\nSo you think you can love me and leave me to die\r\nOh, baby, can\'t do this to me, baby,\r\nJust gotta get out, just gotta get right outta here\r\nNothing really matters, Anyone can see,\r\nNothing really matters,\r\nNothing really matters to me\r\nAny way the wind blows...', 1),
(2, 'Another One Bites The Dust', 2, 'https://www.youtube.com/watch?v=rY0WxgSXdEE', 'Let\'s go\r\nSteve walks warily down the street\r\nWith his brim pulled way down low\r\nAin\'t no sound but the sound of his feet\r\nMachine guns ready to go\r\nAre you ready hey are you ready for this?\r\nAre you hanging on the edge of your seat?\r\nOut of the doorway the bullets rip\r\nTo the sound of the beat yeah\r\nAnother one bites the dust\r\nAnother one bites the dust\r\nAnd another one gone and another one gone\r\nAnother one bites the dust\r\nHey I\'m gonna get you too\r\nAnother one bites the dust\r\nHow do you think I\'m going to get along\r\nWithout you when you\'re gone\r\nYou took me for everything that I had\r\nAnd kicked me out on my own\r\nAre you happy are you satisfied?\r\nHow long can you stand the heat\r\nOut of the doorway the bullets rip\r\nTo the sound of the beat look out\r\nAnother one bites the dust\r\nAnother one bites the dust\r\nAnd another one gone and another one gone\r\nAnother one bites the dust\r\nHey I\'m gonna get you too\r\nAnother one bites the dust\r\nHey\r\nOh take it - Bite the dust bite the dust\r\nHey Another one bites the dust\r\nAnother one bites the dust ow\r\nAnother one bites the dust he he\r\nAnother one bites the dust haaaa\r\nOoh shoot out\r\nThere are plenty of ways that you can hurt a man\r\nAnd bring him to the ground\r\nYou can beat him\r\nYou can cheat him\r\nYou can treat him bad and leave him\r\nWhen he\'s down\r\nBut I\'m ready yes I\'m ready for you\r\nI\'m standing on my own two feet\r\nOut of the doorway the bullets rip\r\nRepeating to the sound of the beat\r\nAnother one bites the dust\r\nAnother one bites the dust\r\nAnd another one gone and another one gone\r\nAnother one bites the dust yeah\r\nHey I\'m gonna get you too\r\nAnother one bites the dust\r\nShoot out', 1),
(3, 'We Are the Champions', 17, 'https://www.youtube.com/watch?v=KXw8CRapg7k', 'I\'ve paid my dues\r\nTime after time\r\nI\'ve done my sentence\r\nBut committed no crime\r\nAnd bad mistakes\r\nI\'ve made a few\r\nI\'ve had my share of sand\r\nKicked in my face\r\nBut I\'ve come through\r\nAnd we mean to go on and on and on and on\r\nWe are the champions, my friends\r\nAnd we\'ll keep on fighting till the end\r\nWe are the champions\r\nWe are the champions\r\nNo time for losers\r\n\'Cause we are the champions of the World\r\nI\'ve taken my bows\r\nAnd my curtain calls\r\nYou brought me fame and fortune\r\nAnd everything that goes with it\r\nI thank you all\r\nBut it\'s been no bed of roses\r\nNo pleasure cruise\r\nI consider it a challenge before\r\nThe human race\r\nAnd I ain\'t gonna lose\r\nAnd we mean to go on and on and on and on\r\nWe are the champions, my friends\r\nAnd we\'ll keep on fighting till the end\r\nWe are the champions\r\nWe are the champions\r\nNo time for losers\r\n\'Cause we are the champions of the World\r\nWe are the champions, my friends\r\nAnd we\'ll keep on fighting till the end\r\nWe are the champions\r\nWe are the champions\r\nNo time for losers\r\n\'Cause we are the champions of the World', 1),
(4, 'We Will Rock You', 16, 'https://www.youtube.com/watch?v=-tJYN-eG1zk', 'Buddy, you\'re a boy, make a big noise\r\nPlaying in the street, gonna be a big man someday\r\nYou got mud on your face, you big disgrace\r\nKicking your can all over the place, singin\'\r\nWe will, we will rock you\r\nWe will, we will rock you\r\nBuddy, you\'re a young man, hard man\r\nShouting in the street, gonna take on the world someday\r\nYou got blood on your face, you big disgrace\r\nWaving your banner all over the place\r\nWe will, we will rock you, sing it!\r\nWe will, we will rock you, yeah\r\nBuddy, you\'re an old man, poor man\r\nPleading with your eyes, gonna get you some peace someday\r\nYou got mud on your face, big disgrace\r\nSomebody better put you back into your place, do it!\r\nWe will, we will rock you, yeah, yeah, come on\r\nWe will, we will rock you, alright, louder!\r\nWe will, we will rock you, one more time\r\nWe will, we will rock you\r\nYeah', 1),
(5, 'Give Me Everything', 1, 'https://www.youtube.com/watch?v=EPo5wWmKEaI', 'Me not working hard?\r\nYeah, right, picture that with a Kodak\r\nOr better yet, go to Times Square\r\nTake a picture of me with a Kodak\r\nTook my life from negative to positive\r\nI just want y\'all to know that\r\nAnd tonight, let\'s enjoy life\r\nPitbull, Nayer, Ne-yo, that\'s right\r\nTonight I want all of you tonight\r\nGive me everything tonight\r\nFor all we know, we might not get tomorrow\r\nLet\'s do it tonight\r\nDon\'t care what they say\r\nOr the games they play\r\nNothing is enough\r\n\'Til they handle love (let\'s do it tonight)\r\nI want you tonight\r\nI want you to stay\r\nI want you tonight\r\nGrab somebody sexy, tell \'em hey (hey)\r\nGive me everything tonight (hey)\r\nGive me everything tonight (hey)\r\nGive me everything tonight (hey)\r\nGive me everything tonight\r\nTake advantage of tonight (yeah)\r\n\'Cause tomorrow I\'m off to do battle, perform for princess\r\nBut tonight, I can make you my queen\r\nAnd make love to you endless\r\nIt\'s insane the way the name growin\'\r\nMoney keep flowin\', hustlers move beside us\r\nSo I\'m tip-toein, \' to keep flowin\'\r\nI got it locked up like Lindsay Lohan\r\nPut it on my life, baby\r\nI\'ll make you feel right, baby\r\nCan\'t promise tomorrow\r\nBut I promise tonight (dale)\r\nExcuse me (excuse me)\r\nAnd I might drink a little more than I should tonight (tonight)\r\nAnd I might take you home with me if I could tonight (tonight)\r\nAnd baby, I\'ma make you feel so good tonight\r\n\'Cause we might not get tomorrow\r\nTonight I want all of you tonight\r\nGive me everything tonight\r\nFor all we know, we might not get tomorrow\r\nLet\'s do it tonight\r\nDon\'t care what they say\r\nOr the games they play\r\nNothing is enough\r\n\'Til they handle love (let\'s do it tonight)\r\nI want you tonight\r\nI want you to stay\r\nI want you tonight\r\nGrab somebody sexy, tell \'em hey (hey)\r\nGive me everything tonight (hey)\r\nGive me everything tonight (hey)\r\nGive me everything tonight (hey)\r\nGive me everything tonight\r\nReach for the stars\r\nAnd if you don\'t grab \'em, at least you\'ll fall on top of the world\r\nThink about it\r\n\'Cause if you slip, I\'m gonna fall on top of your girl\r\nWhen I\'m involved with is deeper than the Masons\r\nBaby, baby, and it ain\'t no secret\r\nMy family is from Cuba, but I\'m an American Idol\r\nGettin\' money like Seacrest\r\nPut it on my life, baby (baby)\r\nI\'ll make you feel right, baby (baby)\r\nCan\'t promise tomorrow\r\nBut I promise tonight (dale)\r\nExcuse me (excuse me)\r\nAnd I might drink a little more than I should tonight (tonight)\r\nAnd I might take you home with me if I could tonight (tonight)\r\nAnd baby, I\'ma make you feel so good tonight\r\n\'Cause we might not get tomorrow\r\nTonight, I want all of you tonight\r\nGive me everything tonight\r\nFor all we know, we might not get tomorrow\r\nLet\'s do it tonight\r\nDon\'t care what they say\r\nOr the games they play\r\nNothing is enough\r\n\'Til they handle love (let\'s do it tonight)\r\nI want you tonight\r\nI want you to stay\r\nI want you tonight\r\nGrab somebody sexy, tell \'em hey (hey)\r\nGive me everything tonight (hey)\r\nGive me everything tonight (hey)\r\nGive me everything tonight (hey)\r\nGive me everything tonight\r\nExcuse me (excuse me)\r\nAnd I might drink a little more than I should tonight\r\nAnd I might take you home with me if I could tonight\r\nAnd baby, I\'ma make you feel so good tonight\r\n\'Cause we might not get tomorrow', 2),
(6, 'Timber', 2, 'https://www.youtube.com/watch?v=hHUbLv4ThOo', 'It\'s going down, I\'m yelling timber\r\nYou better move, you better dance\r\nLet\'s make a night, you won\'t remember\r\nI\'ll be the one, you won\'t forget\r\nThe bigger they are, the harder they fall\r\nThis biggity boy\'s a diggity dog\r\nI have \'em like Miley Cyrus, clothes off\r\nTwerking in their bras and thongs, timber\r\nFace down, booty up, timber\r\nThat\'s the way we like the what, timber\r\nI\'m slicker than an oil spill\r\nShe say she won\'t, but I bet she will, timber\r\nSwing your partner round and round\r\nEnd of the night, it\'s going down\r\nOne more shot, another round\r\nEnd of the night, it\'s going down\r\nSwing your partner round and round\r\nEnd of the night, it\'s going down\r\nOne more shot, another round\r\nEnd of the night, it\'s going down\r\nIt\'s going down, I\'m yelling timber\r\nYou better move, you better dance\r\nLet\'s make a night, you won\'t remember\r\nI\'ll be the one, you won\'t forget\r\nIt\'s going down, I\'m yelling timber\r\nYou better move, you better dance\r\nLet\'s make a night, you won\'t remember\r\nI\'ll be the one, you won\'t forget\r\nLook up in the sky, it\'s a bird, it\'s a plane\r\nNah, it\'s just me, ain\'t a damn thing changed\r\nLive in hotels, swing on plane\r\nBlessed to say, money ain\'t a thing\r\nClub jumping like Lebron, now, Voli\r\nOrder me another round, homie\r\nWe about to climb, wild, \'cause it\'s about to go down\r\nSwing your partner round and round\r\nEnd of the night, it\'s going down\r\nOne more shot, another round\r\nEnd of the night, it\'s going down\r\nSwing your partner round and round\r\nEnd of the night, it\'s going down\r\nOne more shot, another round\r\nEnd of the night, it\'s going down\r\nIt\'s going down, I\'m yelling timber\r\nYou better move, you better dance\r\nLet\'s make a night, you won\'t remember\r\nI\'ll be the one, you won\'t forget\r\nIt\'s going down, I\'m yelling timber\r\nYou better move, you better dance\r\nLet\'s make a night, you won\'t remember\r\nI\'ll be the one, you won\'t forget', 2),
(7, 'I Know You Want Me', 3, 'https://www.youtube.com/watch?v=hFoxg4IFtqc', 'Haha\r\nIt\'s Mr. 305 checkin\' in for the remix\r\nYou know that 75 Street Brazil?\r\nWell, this year gon\' be called Calle Ocho\r\nHahahaha\r\n¿Qué bola Cata, qué bola Omega?\r\nAnd this how we gon\' do it\r\nDale\r\nOne, two, three, four\r\nUno, dos, tres, cuatro\r\nI know you want me (want me)\r\nYou know I want ya (want ya)\r\nI know you want me\r\nYou know I want ya (want ya)\r\nI know you want me (want me)\r\nYou know I want ya (want ya)\r\nI know you want me\r\nYou know I want ya (want ya)\r\nOne, two, three, four\r\nUno, dos, tres, cuatro\r\nRumba (sí)\r\nElla quiere su rumba (cómo?)\r\nRumba (sí)\r\nElla quiere si rumba (cómo?)\r\nSi e\' verdad que tú ere\' guapa\r\nYo te voy a poner gozar\r\nTú tienes la boca grande, dale, ponte a jugar (cómo?)\r\nOne, two, three, four\r\nUno, dos, tres, cuatro\r\nTick to the tock, on my way to the top, huh\r\nPit got it locked from goons to the locks, yuh\r\nR.I.P., uh, BIG and Pac\r\nThat he\'s not, but damn he\'s hot\r\nLabel flop but Pit won\'t stop\r\nGot her in the cockpit playin\' with Pit\'s (cómo?)\r\nNow watch me make a movie like Albert Hitchcock, haha (enjoy me, woo)\r\nI know you want me (want me)\r\nYou know I want ya (want ya)\r\nI know you want me\r\nYou know I want ya (want ya)\r\nI know you want me (want me)\r\nYou know I want ya (want ya)\r\nI know you want me\r\nYou know I want ya (want ya)\r\nOne, two, three, four\r\nUno, dos, tres, cuatro\r\nRumba (sí)\r\nElla quiere su rumba (cómo?)\r\nRumba (sí)\r\nElla quiere si rumba (cómo?)\r\nSi e\' verdad que tú ere\' guapa\r\nYo te voy a poner gozar\r\nTú tienes la boca grande, dale, ponte a jugar (cómo?)\r\nOne, two, three, four\r\nUno, dos, tres, cuatro\r\nMami got an ass like a donkey, with a monkey\r\nLook like King Kong, welcome to the crib\r\n305, that\'s what it is\r\nWith the woman down here are the sh-, they don\'t play games\r\nThey off the chain, and they love to do everything\r\nAnd anything, anything\r\nAnd they love it gettin\' it in, gettin\' on\r\nAll night long (dale)\r\nI know you want me (want me)\r\nYou know I want ya (want ya)\r\nI know you want me\r\nYou know I want ya (want ya)\r\nI know you want me (want me)\r\nYou know I want ya (want ya)\r\nI know you want me\r\nYou know I want ya (want ya)\r\nOne, two, three, four\r\nUno, dos, tres, cuatro\r\nRumba (sí)\r\nElla quiere si rumba (cómo?)\r\nRumba (sí)\r\nElla quiere si rumba (cómo?)\r\nSi es verdad que tu ere guapa\r\nYo te voy a poner gozar\r\nTú tienes la boca grande, dale, ponte a jugar (cómo?)\r\nOne, two, three, four\r\nUno, dos, tres, cuatro\r\nBaby, you can get it, if you with it, we can play\r\nBaby, I got cribs, I got condos we can stay\r\nEven got a king-size mattress we can lay\r\nBaby, I don\'t care, I don\'t care, what they say\r\nI know you want me (want me)\r\nYou know I want ya (want ya)\r\nI know you want me\r\nYou know I want ya (want ya)\r\nI know you want me (want me)\r\nYou know I want ya (want ya)\r\nI know you want me\r\nYou know I want ya (want ya)\r\nOne, two, three, four\r\nUno, dos, tres, cuatro\r\nRumba (sí)\r\nElla quiere si rumba (cómo?)\r\nRumba (sí)\r\nElla quiere si rumba (cómo?)\r\nSi es verdad que tu ere guapa\r\nYo te voy a poner gozar\r\nTú tienes la boca grande, dale, ponte a jugar (cómo?)\r\nOne, two, three, four\r\nUno, dos, tres, cuatro', 2),
(8, 'Don\'t Stop the Party', 4, 'https://www.youtube.com/watch?v=i0vFid2tKbI', 'You don\'t get them girls loose, loose\r\nYou don\'t get the world loose, loose\r\nYou don\'t get money, move, move\r\nBut I do, I do\r\nYou don\'t get them girls loose, loose\r\nYou don\'t get the world loose, loose\r\nYou don\'t get money, move, move\r\nBut I do, I do\r\nI said, y\'all having a good time out there?\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nI\'m running through the world like a running back\r\nScarface, world\'s mine, running back\r\n30, 000 people in here know me?\r\n80, 000 people in London, Wembley\r\n90, 000 people in Morocco\r\nAnd I\'m just getting warmed up, papo\r\nCatch me with Red One in Stockholm\r\nBeirut cafe getting my drink on, voli\r\nWow, all the pretty women here, the hookah\r\nAll of them sweet, azucar, azucar, dale disfruta\r\nThey can\'t, they won\'t\r\nThey never will stop the party\r\nThey can\'t, they won\'t\r\nThey never will stop the party\r\nI said, y\'all having a good time out there?\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nI\'m from the city where they stress ya and they sling keys\r\nAnd now I\'m doing shows in Helsinki (Finland)\r\nI know what ya\'ll thinking, you\'re thinking\r\nThat you can out-think me but you can\'t frankly\r\nI\'m out for the benji\'s, frankies, c-notes\r\nJust \'cause you ain\'t me, don\'t hate me\r\nAs a matter fact you should thank me\r\nEven if you don\'t, you\'re welcome, Yankees\r\nZig-a-zig-a-zig-a-zig-a-zow\r\nWho got the keys of the world, now, yours truly, blow\r\nThey can\'t, they won\'t\r\nThey never will stop the party\r\nThey can\'t, they won\'t\r\nThey never will stop the party\r\nI said, y\'all having a good time out there?\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nI\'ma give it to ya, ah, ah\r\nNow give it to me, ah, ah\r\nI\'ma give it to ya, ah, ah\r\nNow give it to me, ah, ah\r\nI\'ma give it to ya, ah, ah\r\nNow give it to me, ah, ah\r\nGet funky, get funky\r\nNow stop\r\nI said, y\'all having a good time out there?\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party\r\nYeah, yeah, yeah, que no pare la fiesta\r\nDon\'t stop the party', 2),
(9, 'International Love', 9, 'https://www.youtube.com/watch?v=CdXesX6mYUE', 'Went from Mr. 305 (Dade County)\r\nTo Mr. Worldwide (all around the word), ayy, ayy\r\nNow we\'re international, so international (oh, yeah)\r\nInternational (woo) so international\r\nYou can\'t catch me boy (can\'t catch me boy)\r\nI am overseas at about a hundred Gs for sure\r\nDon\'t test me boy (don\'t test me boy) \'cause I rap with the best\r\nFo\' sho three oh five to the death of me\r\nCremate my body let the ocean have what\'s left of me\r\nBut for now forget about that\r\nBlow the whistle, baby you\'re the referee\r\nYou put it down like New York City, I never sleep\r\nWild like Los Angeles, my fantasy (Chris Brown)\r\nHotter than Miami, I feel the heat (oh, yeah)\r\nOh, oh, oh, oh (girl it\'s), it\'s international love (international)\r\nOh, oh, oh, oh (yeah), it\'s international love\r\nI don\'t play football\r\nBut I\'ve touched down everywhere (everywhere?) everywhere\r\nI don\'t play baseball\r\nBut I\'ve hit a home run everywhere, everywhere\r\nI\'ve been to countries and cities I can\'t pronounce\r\nAnd the places on the globe I didn\'t know existed\r\nIn Romania she pulled me to the side\r\nAnd told me: \"Pit you can have me and my sister\"\r\nIn Lebanon yeah the women the bomb\r\nAnd in Greece you guessed it the women are sweet\r\nBeen all around the world\r\nBut I ain\'t gonna lie there\'s nothing like Miami\'s heat (dale)\r\nYou put it down like New York City, I never sleep\r\nWild like Los Angeles, my fantasy (ah-ha)\r\nHotter than Miami, I feel the heat (oh, yeah)\r\nOh, oh, oh, oh (girl it\'s), it\'s international love (we\'re international)\r\nOh, oh, oh, oh (yeah), it\'s international love\r\nDown in DR they\'re looking for visa\'s\r\nI ain\'t taking credit cards if you know what I mean\r\nEn Cuba la cosa esta dura\r\nBut the woman get down, if you know what I mean\r\nEn Colombia the women got everything done\r\nBut they\'re some of the most beautiful women I\'ve ever seen\r\nIn Brazil they\'re freaky with big ol\' boobs\r\nAnd their thongs, blue yellow and green\r\nEn L.A. tengo la Mexicana, en New York tengo la boricua\r\nBesitos para todas las mujeres en Venezuela, muah\r\nY en Miami tengo cualquiera\r\nYou put it down like New York City, I never sleep\r\nWild like Los Angeles, my fantasy (oh, woah)\r\nHotter than Miami, I feel the heat (you\'re hotter than Miami)\r\nOh, oh, oh, oh (all around the world), it\'s international love (we\'re international)\r\nOh, oh, oh, oh (yeah), it\'s international love\r\nThere\'s not a place that your love don\'t affect me baby\r\nSo don\'t ever change\r\nI crossed the globe when I\'m with you baby\r\nHey (Chris Brown)\r\nOh, woah (this is for the women worldwide)\r\nLet\'s ride, woo\r\nYou put it down like New York City, I never sleep (212)\r\nWild like Los Angeles, my fantasy (310)\r\nHotter than Miami (you\'re hotter than Miami), I feel the heat (305)\r\nOh, oh, oh, oh (girl it\'s), it\'s international love (we\'re international)\r\nOh, oh, oh, oh (yeah), it\'s international love\r\nYou put it down like New York City, I never sleep (2-1-2)\r\nWild like Los Angeles, my fantasy (3-1-0)\r\nHotter than Miami, I feel the heat (305)\r\nOh, oh, oh, oh , it\'s international love (we\'re international)\r\nOh, oh, oh, oh, it\'s international love\r\nOh (you\'re international, so international)\r\nOh (you\'re international, so international)\r\nOh (you\'re international, so international)\r\nWhoa whoa oh whoa whoa oh, international love (surrounded by beautiful girls)\r\nWhoa whoa oh whoa whoa oh, international love', 2),
(10, 'Fireball', 11, 'https://www.youtube.com/watch?v=HMqgVXSvwGo', 'Mr. Worldwide to infinity\r\nYou know the roof on fire\r\nWe gon\' boogie oogie oggi, jiggle, wiggle and dance\r\nLike the roof on fire\r\nWe gon\' drink drink and take shots until we fall out\r\nLike the roof on fire\r\nNow baby give a booty naked, take off all your clothes,\r\nand light the roof on fire\r\nTell her baby baby baby baby\r\nI\'m in fire\r\nI tell her baby baby baby\r\nI\'m a fireball\r\nFireball\r\nI saw, I came, I conquered\r\nOr should I say, I saw I conquered, I came\r\nThey say the Chico on fire and he no liar\r\nWhile y\'all slippin\' he runnin\' the game\r\nNow big bang boogie\r\nGet that kitty little noogie\r\nIn a nice nice little shade\r\nI gave Suzie a little pat up on the booty\r\nAnd she turned around and said\r\nWalk this way\r\nI was born in a flame\r\nMama said that everyone would know my name\r\nI\'m the best you\'ve never had\r\nIf you think I\'m burning out, I\'m never am\r\nI\'m on fire\r\nI\'m on fire\r\nI\'m on fire\r\nI\'m on fire\r\nFireball\r\nSticks and stones may break my bones\r\nBut I don\'t care what y\'all say\r\n\'Cause as the world turns, y\'all boys gonna learn\r\nThat Chico right here don\'t play\r\nThat boy\'s from the bottom, bottom of the map\r\nM.I.A U.S.A\r\nI gave Suzie a little pat up on the booty\r\nAnd she turned around and said\r\nWalk this way\r\nI was born in a flame\r\nMama said that everyone would know my name\r\nI\'m the best you\'ve never had\r\nIf you think I\'m burning out, I\'m never am\r\nI\'m on fire\r\nI\'m on fire\r\nI\'m on fire\r\nI\'m on fire\r\nFireball\r\nWe\'re taking it, we\'re taking it\r\nWe\'re taking it down\r\nWe\'re taking it, we\'re taking it\r\nWe\'re taking it down\r\nWe\'re taking it, we\'re taking it\r\nWe\'re taking it down\r\nWe\'re taking it, we\'re taking it\r\nWe\'re taking it down\r\nWe\'re taking it, we\'re taking it\r\nWe\'re taking it down\r\nWe\'re taking it, we\'re taking it\r\nWe\'re taking it down\r\nWe\'re taking it, we\'re taking it\r\nWe\'re taking it down\r\nWe\'re taking it, we\'re taking it\r\nWe\'re taking it down\r\nNow we\'re bring it, we\'re bring it\r\nWe\'re bring it back\r\nWe\'re bring it, we\'re bring it\r\nWe\'re bring it back\r\nWe\'re bring it, we\'re bring it\r\nWe\'re bring it back\r\nWe\'re bring it, we\'re bring it\r\nWe\'re bring it back\r\nWe\'re bring it, we\'re bring it\r\nWe\'re bring it back\r\nWe\'re bring it, we\'re bring it\r\nWe\'re bring it back\r\nWe\'re bring it, we\'re bring it\r\nWe\'re bring it back\r\nFireball\r\nFireball\r\nTell her baby baby baby baby\r\nI\'m in fire\r\nI tell her baby baby baby baby\r\nI\'m a fireball', 2),
(11, 'Dare (La La La)', 4, 'https://www.youtube.com/watch?v=7-7knsP2n5w', 'La la, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nLa la, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nHush, don\'t speak\r\nWhen you spit your venom, keep it shut I hate it\r\nWhen you hiss and preach\r\nAbout your new messiah \'cause your theories catch fire\r\nI can\'t find your silver lining\r\nI don\'t mean to judge\r\nBut when you read your speech, it\'s tiring\r\nEnough is enough\r\nI\'m covering my ears like a kid\r\nWhen your words mean nothing, I go la la la\r\nI\'m turning up the volume when you speak\r\n\'Cause if my heart can\'t stop it\r\nI find a way to block it, I go\r\nLa la, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nI find a way to block it, I go\r\nLa la na na, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nIf our love is running out of time\r\nI won\'t count the hours, rather be a coward\r\nWhen our worlds collide\r\nI\'m gonna drown you out before I lose my mind\r\nI can\'t find your silver lining\r\nI don\'t mean to judge\r\nBut when you read your speech, it\'s tiring\r\nEnough is enough\r\nI\'m covering my ears like a kid\r\nWhen your words mean nothing, I go la la la\r\nI\'m turning up the volume when you speak\r\n\'Cause if my heart can\'t stop it\r\nI find a way to block it, I go\r\nLa la, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nI find a way to block it, I go\r\nLa la, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nI find a way to block it, oh\r\nLa la, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nI find a way to block it, I go\r\nLa la na na, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nI\'m covering my ears like a kid\r\nWhen your words mean nothing, I go la la la\r\nI\'m turning up the volume when you speak\r\n\'Cause if my heart can\'t stop it\r\nI find a way to block it, I go\r\nI\'m covering my ears like a kid\r\nWhen your words mean nothing, I go la la la\r\nI\'m turning up the volume when you speak\r\n\'Cause if my heart can\'t stop it\r\nI find a way to block it, I go\r\nLa la, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na\r\nLa la na na, la la la la la na na na na na', 3),
(12, 'Can\'t Remember to Forget You', 1, 'https://www.youtube.com/watch?v=o3mP3mJDL2k', 'And I left a note on my bedpost\r\nSaying not to repeat yesterday\'s mistakes\r\nWhat I tend to do when it comes to you\r\nI see only the good, selective memory\r\nThe way you make me feel, yeah\r\nYou got a hold on me, I never met someone so different\r\nOh here we go\r\nYou\'re part of me now\r\nYou\'re part of me\r\nSo where you go I follow, follow, follow\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI can\'t remember to forget you\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI keep forgetting I should let you go\r\nBut when you look at me\r\nThe only memory is us kissing in the moonlight\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI can\'t remember to forget you\r\nI can\'t remember to forget you\r\nI go back again\r\nFall off the train\r\nLand in his bed, repeat yesterday\'s mistakes\r\nWhat I\'m trying to say\r\nIs not to forget\r\nYou see only the good, selective memory\r\nThe way he makes me feel like\r\nThe way he makes me feel, I never seemed to act so stupid\r\nOh here we go\r\nHe a part of me now\r\nHe a part of me\r\nSo where he goes I follow, follow, follow\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI can\'t remember to forget you\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI keep forgetting I should let you go\r\nBut when you look at me\r\nThe only memory is us kissing in the moonlight\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI can\'t remember to forget you\r\nI rob and I kill to keep him with me\r\nI\'ll do anything for that boy\r\nI\'d give my last dime to hold him tonight\r\nI\'ll do anything for that boy\r\nI rob and I kill to keep him with me\r\nI\'ll do anything for that boy\r\nI\'d give my last dime to hold him tonight\r\nI\'ll do anything for that boy\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI can\'t remember to forget you\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI keep forgetting I should let you go\r\nBut when you look at me\r\nThe only memory is us kissing in the moonlight\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI can\'t remember to forget you\r\nBut when you look at me\r\nThe only memory is us kissing in the moonlight\r\nOh-oh ooh oh, oh-oh ooh oh\r\nI can\'t remember to forget you', 3),
(13, 'La Isla Bonita', 7, 'https://www.youtube.com/watch?v=zpzdgmqIHOQ', 'Como puede ser verdad\r\nLast night I dreamt of San Pedro\r\nJust like I\'d never gone, I knew the song\r\nA young girl with eyes like the desert\r\nIt all seems like yesterday, not far away\r\nTropical the island breeze\r\nAll of nature wild and free\r\nThis is where I long to be\r\nLa isla bonita\r\nAnd when the samba played\r\nThe sun would set so high\r\nRing through my ears and sting my eyes\r\nYour Spanish lullaby\r\nI fell in love with San Pedro\r\nWarm wind carried on the sea, he called to me\r\nTe dijo te amo\r\nI prayed that the days would last\r\nThey went so fast\r\nTropical the island breeze\r\nAll of nature wild and free\r\nThis is where I long to be\r\nLa isla bonita\r\nAnd when the samba played\r\nThe sun would set so high\r\nRing through my ears and sting my eyes\r\nYour Spanish lullaby\r\nI want to be where the sun warms the sky\r\nWhen it\'s time for siesta you can watch them go by\r\nBeautiful faces, no cares in this world\r\nWhere a girl loves a boy, and a boy loves a girl\r\nLast night I dreamt of San Pedro\r\nIt all seems like yesterday, not far away\r\nTropical the island breeze\r\nAll of nature wild and free\r\nThis is where I long to be\r\nLa isla bonita\r\nAnd when the samba played\r\nThe sun would set so high\r\nRing through my ears and sting my eyes\r\nYour Spanish lullaby\r\nTropical the island breeze\r\nAll of nature wild and free\r\nThis is where I long to be\r\nLa isla bonita\r\nAnd when the samba played\r\nThe sun would set so high\r\nRing through my ears and sting my eyes\r\nYour Spanish lullaby\r\nLa la la la la la la\r\nTe dijo te amo\r\nLa la la la la la la\r\nEl dijo que te ama', 4),
(14, 'Jolene', 1, 'https://www.youtube.com/watch?v=Ixrje2rXLMA', 'Jolene, Jolene, Jolene, Jolene\r\nI\'m begging of you please don\'t take my man\r\nJolene, Jolene, Jolene, Jolene\r\nPlease don\'t take him just because you can\r\nYour beauty is beyond compare\r\nWith flaming locks of auburn hair\r\nWith ivory skin and eyes of emerald green\r\nYour smile is like a breath of spring\r\nYour voice is soft like summer rain\r\nAnd I cannot compete with you\r\nJolene\r\nHe talks about you in his sleep\r\nAnd there\'s nothing I can do to keep\r\nFrom crying when he calls your name\r\nJolene\r\nAnd I can easily understand\r\nHow you could easily take my man\r\nBut you don\'t know what he means to me\r\nJolene\r\nJolene, Jolene, Jolene, Jolene\r\nI\'m begging of you please don\'t take my man\r\nJolene, Jolene, Jolene, Jolene\r\nPlease don\'t take him just because you can\r\nYou could have your choice of men\r\nBut I could never love again\r\nHe\'s the only one for me\r\nJolene\r\nI had to have this talk with you\r\nMy happiness depends on you\r\nAnd whatever you decide to do\r\nJolene\r\nJolene, Jolene, Jolene, Jolene\r\nI\'m begging of you please don\'t take my man\r\nJolene, Jolene, Jolene, Jolene\r\nPlease don\'t take him even though you can\r\nJolene, Jolene', 5),
(15, 'She Wolf', 1, 'https://www.youtube.com/watch?v=booKP974B0k', 'Sigilosa al pasar\r\nSigilosa al pasar\r\nEsa loba es especial\r\nMírala caminar, caminar\r\n¿Quién no ha querido una diosa licántropa\r\nEn el ardor de una noche romántica?\r\nMis aullidos son el llamado\r\nYo quiero un lobo domesticado\r\nAl fin he encontrado un remedio infalible que borre del todo la culpa\r\nNo pienso quedarme a tu lado mirando la tele y oyendo disculpas\r\nLa vida me ha dado un hambre voraz, y tú apenas me das caramelos, ay\r\nMe voy con mis piernas y mi juventud por allá, aunque te maten los celos\r\nUna loba en el armario\r\nTiene ganas de salir\r\nDeja que se coma el barrio\r\nAntes de irte a dormir\r\nTengo tacones de aguja magnética\r\nPara dejar la manada frenética\r\nLa luna llena, abona fruta\r\nDa consejos y los escucha\r\nLlevo conmigo un radar especial para localizar solteros\r\nSi acaso me meto en aprietos, también llevo el número de los bomberos\r\nNi tipos muy lindos, ni divos, ni niños ricos, yo sé lo que quiero (Ah)\r\nPasarla muy bien y portarme muy mal en los brazos de algún caballero\r\nUna loba en el armario\r\nTiene ganas de salir\r\nDeja que se coma el barrio\r\nAntes de irte a dormir\r\nCuando son casi la una, la loba en celo saluda a la luna\r\nDuda si andar por la calle o entrar en un bar a probar fortuna\r\nYa está sentada en su mesa y pone la mira en su próxima presa\r\nPobre del desprevenido que no se esperaba una de esas\r\nSigilosa al pasar\r\nSigilosa al pasar\r\nEsa loba es especial\r\nMírala caminar, caminar\r\nDeja que se coma el barrio\r\nAntes de irte a dormir', 6),
(16, 'Hips Don\'t Lie', 3, 'https://www.youtube.com/watch?v=DUT5rEU6pqM', 'Ladies up in here tonight\r\nNo fighting\r\nWe got the refugees up in here (no fighting)\r\nNo fighting\r\nShakira, Shakira\r\nI never really knew that she could dance like this (hey)\r\nShe make a man wants to speak Spanish\r\n¿Cómo se llama? (Sí), bonita (sí)\r\nMi casa, su casa (Shakira, Shakira)\r\nOh, baby, when you talk like that\r\nYou make a woman go mad\r\nSo be wise (sí) and keep on (sí)\r\nReading the signs of my body (uno, dos, tres, cuatro)\r\nI\'m on tonight\r\nYou know my hips don\'t lie (no fighting)\r\nAnd I\'m starting to feel it\'s right\r\nAll the attraction, the tension\r\nDon\'t you see, baby, this is perfection?\r\nHey, girl, I can see your body moving\r\nAnd it\'s driving me crazy\r\nAnd I didn\'t have the slightest idea\r\nUntil I saw you dancing (yeah)\r\nAnd when you walk up on the dance floor\r\nNobody cannot ignore the way you move your body, girl (just move)\r\nAnd everything so unexpected, the way you right and left it\r\nSo you can keep on shaking it (let\'s go)\r\nI never really knew that she could dance like this\r\nShe make a man wants to speak Spanish\r\n¿Cómo se llama? (Sí), bonita (sí)\r\nMi casa, su casa (Shakira, Shakira)\r\nOh, baby, when you talk like that\r\nYou make a woman go mad\r\nSo be wise (sí) and keep on (sí)\r\nReading the signs of my body (no fighting)\r\nI\'m on tonight\r\nYou know my hips don\'t lie (no fighting)\r\nAnd I am starting to feel you, boy\r\nCome on, let\'s go, real slow\r\nDon\'t you see, baby, así es perfecto?\r\nThey know I am on tonight, my hips don\'t lie\r\nAnd I\'m starting to feel it\'s right\r\nAll the attraction, the tension\r\nDon\'t you see, baby, this is perfection? (Shakira, Shakira)\r\nOh, boy, I can see your body moving\r\nHalf animal, half man\r\nI don\'t, don\'t really know what I\'m doing\r\nBut you seem to have a plan\r\nMy will and self-restraint\r\nHave come to fail now, fail now\r\nSee, I am doing what I can, but I can\'t so you know\r\nThat\'s a bit too hard to explain (uno, dos, tres, cuatro)\r\nBaila en la calle de noche (yeah)\r\nBaila en la calle de día (let\'s go)\r\nBaila en la calle de noche\r\nBaila en la calle de día\r\nI never really knew that she could dance like this\r\nShe make a man wants to speak Spanish\r\n¿Cómo se llama? (Sí), bonita (sí)\r\nMi casa, su casa (Shakira, Shakira)\r\nOh, baby, when you talk like that\r\nYou know you got me hypnotized\r\nSo be wise (sí) and keep on (sí)\r\nReading the signs of my body\r\nSeñorita, feel the conga\r\nLet me see you move like you come from Colombia\r\nYeah (ladies sí) (yeah yeah)\r\n(Hey, yeah)\r\n¡Mira en Barranquilla se baila así, say it! (yeah)\r\nEn Barranquilla se baila así (yeah)\r\nHey, brra!\r\nYeah, she\'s so sexy, every man\'s fantasy\r\nA refugee like me back with the Fugees from a third world country\r\nI go back like when \'Pac carried crates for Humpty Humpty\r\nWe leave the whole club dizzy\r\nWhy the CIA wanna watch us?\r\nColombians and Haitians\r\nI ain\'t guilty, it\'s a musical transaction\r\nBo bop so bop, no more do we snatch ropes\r\nRefugees run the seas \'cause we own our own boats (no fighting)\r\nI\'m on tonight, my hips don\'t lie\r\nAnd I\'m starting to feel you, boy\r\nCome on, let\'s go, real slow\r\nBaby, like this is perfecto (no fighting)\r\nOh, you know I\'m on tonight, my hips don\'t lie\r\nAnd I am starting to feel it\'s right\r\nThe attraction, the tension\r\nBaby, like this is perfection\r\nNo fighting\r\nNo fighting', 7),
(17, 'Whenever, Wherever', 3, 'https://www.youtube.com/watch?v=weRHyjj34ZE', 'Lucky you were born that far away so\r\nWe could both make fun of distance\r\nLucky that I love a foreign land for\r\nThe lucky fact of your existence\r\nBaby, I would climb the Andes solely\r\nTo count the freckles on your body\r\nNever could imagine there were only\r\nTen million ways to love somebody (body, body)\r\nLucky you were born that far away so\r\nWe could both make fun of distance\r\nLucky that I love a foreign land for\r\nThe lucky fact of your existence\r\nBaby, I would climb the Andes solely\r\nTo count the freckles on your body\r\nNever could imagine there were only\r\nTen million ways to love somebody (body, body)\r\nLedo lo le lo le, ledo lo le lo le\r\nCan\'t you see? I\'m at your feet\r\nWhenever, wherever\r\nWe\'re meant to be together\r\nI\'ll be there, and you\'ll be near\r\nAnd that\'s the deal, my dear\r\nThere over, hereunder\r\nYou\'ll never have to wonder\r\nWe can always play by ear\r\nBut that\'s the deal, my dear\r\nLucky that my lips not only mumble\r\nThey spill kisses like a fountain\r\nLucky that my breasts are small and humble\r\nSo you don\'t confuse them with mountains\r\nLucky I have strong legs like my mother\r\nTo run for cover when I need it\r\nAnd these two eyes that for no other\r\nThe day you leave, will cry a river\r\nLedo lo le lo le, ledo lo le lo le (one more time)\r\nAt your feet, I\'m at your feet\r\nWhenever, wherever\r\nWe\'re meant to be together\r\nI\'ll be there, and you\'ll be near\r\nAnd that\'s the deal, my dear\r\nThere over, hereunder\r\nWe\'ll never have to wonder\r\nLedo lo le lo le, ledo lo le lo le\r\nThink out loud, say it again\r\nLedo lo le lo le lo lo\r\nTell me one more time\r\nThat you\'ll live lost in my eyes\r\nWhenever, wherever\r\nWe\'re meant to be together\r\nI\'ll be there, and you\'ll be near\r\nAnd that\'s the deal, my dear\r\nThere over, hereunder\r\nYou\'ll never have to wonder\r\nWhenever, wherever\r\nWe\'re meant to be together\r\nI\'ll be there, and you\'ll be near\r\nAnd that\'s the deal my dear\r\nThere over, hereunder\r\nYou\'ve got me head over heels\r\nThere\'s nothing left to fear\r\nCome on listen (If you really feel the way I feel)', 8),
(18, 'Chantaje', 9, 'https://www.youtube.com/watch?v=6Mgqbai3fKo', 'Hola, mírame\r\nHo-hola, mírame\r\nCuando estás bien, te alejas de mí\r\nTe sientes sola, y siempre estoy ahí\r\nEs una guerra de toma y dame\r\nPues dame de eso que tiene\' ahí\r\nOye, baby, no seas mala\r\nNo me dejes con las ganas\r\nSe escucha en la calle que ya no me quieres\r\nVen y dímelo en la cara\r\nPregúntale a quien tú quieras\r\nVida, te juro que eso no es así\r\nYo nunca tuve una mala intención\r\nYo nunca quise burlarme de ti\r\nConmigo ves, nunca se sabe\r\nUn día digo que no y otro que sí\r\nYo soy masoquista\r\nCon mi cuerpo un egoísta\r\nTú eres puro, puro chantaje\r\nPuro, puro chantaje\r\nSiempre es a tu manera\r\nYo te quiero aunque no quiera\r\nTú eres puro, puro chantaje\r\nPuro, puro chantaje\r\nVas libre como el aire\r\nNo soy de ti ni de nadie\r\nCómo tú me tientas cuando tú te mueves\r\nEsos movimientos sexy siempre me entretienen\r\nSabe\' manipularme bien con tu cadera\r\nNo sé por qué me tienes en lista de espera\r\nTe dicen por ahí que voy haciendo y deshaciendo\r\nQue salgo cada noche, que te tengo ahí sufriendo\r\nQue en esta relación soy yo la que manda\r\nNo pares bola\' a toda esa mala propaganda\r\nPa\'-pa\' qué te digo na\', te comen el oído\r\nNo vaya\' a enderezar lo que no se ha torcido\r\nY como un loco sigo tras de ti, muriendo por ti\r\nDime, ¿qué hay pa\' mí, bebé?\r\n¿Qué?\r\nPregúntale a quien tú quieras\r\nVida, te juro que eso no es así\r\nYo nunca tuve una mala intención\r\nYo nunca quise burlarme de ti\r\nConmigo ves, nunca se sabe\r\nUn día digo que no y otro que sí\r\nYo soy masoquista\r\nCon mi cuerpo un egoísta\r\nTú eres puro, puro chantaje\r\nPuro, puro chantaje\r\nSiempre es a tu manera\r\nYo te quiero aunque no quiera\r\nTú eres puro, puro chantaje\r\nPuro, puro chantaje\r\nVas libre como el aire\r\nNo soy de ti ni de nadie eh-eh-eh\r\nNadie eh-eh-eh\r\nNadie eh-eh-eh\r\nNadie (nadie)\r\nCon mi cuerpo un egoísta\r\nTú eres puro, puro chantaje\r\nPuro, puro chantaje\r\nSiempre es a tu manera\r\nYo te quiero aunque no quiera\r\nTú eres puro, puro chantaje\r\nPuro, puro chantaje\r\nVas libre como el aire\r\nNo soy de ti ni de nadie eh-eh-eh\r\nNadie eh-eh-eh\r\nNadie eh-eh-eh\r\nNadie (nadie) eh-eh-eh, eh, eh\r\nAlright, alright, baby\r\nShakira, Maluma, uh-huh\r\nPretty boy\r\nYou\'re my baby loba, yeah\r\nColombia, you feel me?\r\nPretty boy', 9),
(19, 'Get Ready', 6, 'https://www.youtube.com/watch?v=Ejdx6_hYTiY', 'If you wanna good time\r\nIf you wanna good time\r\nLet me hear you say, \"Hey\"\r\nEverybody say, \"Hey\"\r\nIf you wanna good time\r\nIf you wanna good time\r\nLet me hear you say, \"Hey\"\r\nEverybody say, \"Hey\"\r\nIf you wanna good time\r\nIf you wanna good time\r\nLet me hear you say, \"Hey\"\r\nEverybody say, \"Hey\"\r\nIf you wanna good time\r\nIf you wanna good time\r\nGet \'em up, get \'em up, get \'em up, get \'em up, get \'em up\r\nPut your hands up\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nGet ready to ride\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nGet ready worldwide\r\nWildin\' out, fill my cup to the tip\r\nRidin\' out to Atlantic City\r\nHardrock, yeah we opened it\r\nFive, four, three, two, one, for the win\r\nGot \'em, that boy so solid\r\nThat\'s what happens when you come from the bottom\r\n305 Paradise City\r\nWhere the girls got big ol\' booties and so pretty\r\nNow shake that thang (shake that, shake that)\r\nWork that thang (work that, work that)\r\nDrop that thang (drop that, drop that)\r\nPut your hands up\r\nNow say it\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nGet ready to ride\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nGet ready worldwide\r\nIlov305 on the strip\r\nGo ahead girl, get loose, get lit\r\nGo ahead girl, get it in, get it in\r\nFive, four, three, two, one, for the win\r\nGot \'em, that boy so solid\r\nThat\'s what happens when you come from the bottom\r\n305 Paradise City\r\nWhere the girls got big ol\' booties and so pretty\r\nNow shake that thang (shake that, shake that)\r\nWork that thang (work that, work that)\r\nDrop that thang (drop that, drop that)\r\nPut your hands up\r\nNow say it\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nGet ready to ride\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nWhoa, get ready, bam-ba-lam\r\nGet ready worldwide\r\nOh yeah, Blake, let\'s take \'em \'round the world\r\nWe toured Milan, bam-ba-lam\r\nMiami, LA, New York, Dubai\r\nDubai, Japan, bam-ba-lam\r\nATL, Nashville, to the Chi\'\r\nEastside, westside, bam-ba-lam\r\nI tell the truth, even when I lie\r\nHaha', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_tracks_album_idx` (`album_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tracks`
--
ALTER TABLE `tracks`
  ADD CONSTRAINT `fk_tracks_album` FOREIGN KEY (`album_ID`) REFERENCES `album` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'asd', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"music\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"music\",\"table\":\"tracks\"},{\"db\":\"music\",\"table\":\"album\"},{\"db\":\"music\",\"table\":\"track\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-15 05:45:22', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
