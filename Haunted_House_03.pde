//************************Game stages****************************//
//0: Cover page
//1: 1st question
//2: 2nd question
//3: 3rd question
//4: Good guess!
//5: Wrong!
int stageNum;

//**********************1st cover****************************// 
PImage pic;
float fade = 0;

//1st cover intro
String coverIntro;
String dare;
//PFont dareF;
String click_to_flip;

//dare font 
//PFont font2;

//***********************Q1 instruction****************************//
//L1 type writer sound
import ddf.minim.*;
Minim typeM_L1;
AudioPlayer player1_L1;

//L2 type writer sound
import ddf.minim.*;
Minim typeM_L2;
AudioPlayer player1_L2;

//L3 type writer sound
import ddf.minim.*;
Minim typeM_L3;
AudioPlayer player1_L3;

//L1 heartbeat sound
//import ddf.minim.*;
//Minim heartM_L1;
//AudioPlayer player2_L1;

////L2 heartbeat sound
//import ddf.minim.*;
//Minim heartM_L2;
//AudioPlayer player2_L2;

////L3 heartbeat sound
//import ddf.minim.*;
//Minim heartM_L3;
//AudioPlayer player2_L3;

////scream sound L1
//import ddf.minim.*;
//Minim screamM_L1;
//AudioPlayer player3_L1;

////scream sound L2
//import ddf.minim.*;
//Minim screamM_L2;
//AudioPlayer player3_L2;

////scream sound L3
//import ddf.minim.*;
//Minim screamM_L3;
//AudioPlayer player3_L3;

//music stop choice
int stopM;

//intro text
//PFont font1;
int counterL1_1;
int num = 7;
int choice;
String [] intro = new String[7];

//blood rain
Drop[] drops = new Drop[300];

//normal price
String [] normalP = new String [num];
String [] realP = new String [num];
int counterL1_2;

//question operator
String question;
int counterL1_3;

//****************************options***************************//
String [] option_Q1 = new String[4];
String [] option_Q2 = new String[4];
String [] option_Q3 = new String[4];
String [] option_Q4 = new String[4];
String [] option_Q5 = new String[4];
String [] option_Q6 = new String[4];
String [] option_Q7 = new String[4];


//******************************Q2 instruction******************************//
int choice2;
int counterL2_1;
int counterL2_2;
int counterL2_3;

//*********************************Q3 instruction*****************************//
int choice3;
int counterL3_1;
int counterL3_2;
int counterL3_3;

//check correct or wrong
int i;
float counterC;
String flip1 = "Press '1' to continue";
String flip2 = "Press '2' to continue";
String flip3 = "Press '3' to continue";



//final
//PFont end;
String endT;

//*********************************************setup***************************************//
void setup() {
  size(846, 520);
  //****************************game levels***********************************//
  stageNum = 0;

  //**************************cover page*********************************//
  pic = loadImage("firstCover.jpeg");

  //1st cover intro
  coverIntro = "Read the introduction of each haunted house. \nCan you guess their prices?";
  dare = "Do U Dare?";
  //dareF = loadFont("Chalkduster-40.vlw");
  //font2 = loadFont("PTMono-Bold-36.vlw");
  click_to_flip = "Click your mouse to continue";

  //***********************************Q1*********************************//
  ////L1 type writer sound
  //typeM_L1 = new Minim(this);
  //player1_L1 = typeM_L1.loadFile("type.mp3");

  ////L2 type writer sound
  //typeM_L2 = new Minim(this);
  //player1_L2 = typeM_L2.loadFile("type.mp3");

  ////L3 type writer sound
  //typeM_L3 = new Minim(this);
  //player1_L3 = typeM_L3.loadFile("type.mp3");

  ////L1 heartBeat sound
  //heartM_L1 = new Minim(this);
  //player2_L1 = heartM_L1.loadFile("heartbeat.mp3");

  ////L2 heartBeat sound
  //heartM_L2 = new Minim(this);
  //player2_L2 = heartM_L2.loadFile("heartbeat.mp3");

  ////L3 heartBeat sound
  //heartM_L3 = new Minim(this);
  //player2_L3 = heartM_L3.loadFile("heartbeat.mp3");

  ////L1 scream sound
  //screamM_L1 = new Minim(this);
  //player3_L1 = screamM_L1.loadFile("scream.mp3");

  ////L2 scream sound
  //screamM_L2 = new Minim(this);
  //player3_L2 = screamM_L2.loadFile("scream.mp3");

  ////L3 scream sound
  //screamM_L3 = new Minim(this);
  //player3_L3 = screamM_L3.loadFile("scream.mp3");

  //music stop choice
  stopM = 0;

  //intro text
  //font1 = loadFont("PTMono-Regular-24.vlw");
  counterL1_1 = 0;
  choice = int(random(0, num-1));

  intro[0]= "A 53-year-old woman surnamed Huang set up a insurance company more than 20 years ago. \nHowever, because of the bad economy and a large amount of liability which worthed 40 million, she committed suicide at her residence at Mei Foo Chuen Stage 1 in Lai Chi Kok.";
  intro[1] = "A man surnamed Chen was a former occupant of the house at Tsuen Wan Centre. \nIn 1996, his business failed which put him in deeply in debt. \nAs the desperation surged, one day, he turned on the gas and killed 6 people including his wife, 3 children, and 2 cousins.";
  intro[2]= "At the end of March in 1984, occupants lived in Elizabeth House in Causeway Bay found blood oozing from a planter of the next unit. \nThe police then dug out two men from the planter and confirmed that the deceased were two millionaires from Singapore, who were 32 and 28 years old respectively.";
  intro[3] = "Finery Park, a wealthy estate in Tseung Kwan O, reported a double-body murder case. \nTenants found the house next door was too quiet and tried to open the door. \nThey then found a couple of over 30-year-old died in the room near burned charcoal."; 
  intro[4] = "A man was found dead near burned charcoal by his mother in a house at Park Island Tower 2 in Ma Wan.";
  intro[5] = "In April, an elderly man jumped from his apartment at Lei King Wan Yat Wah Mansion, Sai Wan Ho because he was too pessimistic about his illness."; 
  intro[6] = "The murderer surnamed Ding killed a girl, surnamed Wang, with whom he had a sexual trade at Yan Fat Building, Sham Shui Po, while they were in bed.  \nTo escape from punishment, Wang dumped the meat and viscera into the toilet while the head and body were hidden in a box. \nTogether with the bricks,  he threw the box into the sea.";

  //normal price text
  normalP[0] = "The normal price for the house was 8.55 million.";
  normalP[1] = "The normal price for the house was 4.38 million.";
  normalP[2] = "The normal price for the house was 9.50 million.";
  normalP[3] = "The normal price for the house was 4.95 million.";
  normalP[4] = "The normal price for the house was 4.41 million.";
  normalP[5] = "The normal price for the house was 5.97 million.";
  normalP[6] = "The normal price for the house was 1.70 million.";
  counterL1_2 = 0;

  //question
  question = "Do you think how much did it worth after this tragedy? :)";
  counterL1_3 = 0;

  //blood rain
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }

  //*********************Options****************************//
  //Q1
  option_Q1[0] = "A. 5.01~5.50m/about 40% off";
  option_Q1[1] = "B. 5.51~6.00m/about 30% off";
  option_Q1[2] = "C. 6.51~7.00m/about 20% off";
  option_Q1[3] = "D. 8.20~8.55m/about 1% off";

  //Q2
  option_Q2[0] = "A: 2.01~2.50m/about 50% off";
  option_Q2[1] = "B. 2.51~3.00m/about 40% off";
  option_Q2[2] = "C. 3.51~4.00m/about 10% off";
  option_Q2[3] = "D. 4.01~4.38m/about 5% off";

  //Q3
  option_Q3[0] = "A: 5.51~6.00m/about 40% off";
  option_Q3[1] = "B. 6.51~7.00m/about 30% off";
  option_Q3[2] = "C. 7.01~7.50m/about 25% off";
  option_Q3[3] = "D. 8.51~9.00m/about 10% off";

  //Q4
  option_Q4[0] = "A: 2.01~2.50m/about 50% off";
  option_Q4[1] = "B. 3.01~3.50m/about 30% off";
  option_Q4[2] = "C. 3.51~4.00m/about 20% off";
  option_Q4[3] = "D. 4.51~4.95m/about 5% off";

  //Q5
  option_Q5[0] = "A: 2.01~2.50m/about 50% off";
  option_Q5[1] = "B. 2.51~3.00m/about 35% off";
  option_Q5[2] = "C. 3.01~3.50m/about 25% off";
  option_Q5[3] = "D. 3.51~4.00m/about 10% off";

  //Q6
  option_Q6[0] = "A: 2.51~3.00m/about 50% off";
  option_Q6[1] = "B. 3.51~4.00m/about 35% off";
  option_Q6[2] = "C. 4.01~4.50m/about 25% off";
  option_Q6[3] = "D. 5.01~5.50m/about 10% off";

  //Q7
  option_Q7[0] = "A: .21~.40m/about 80% off";
  option_Q7[1] = "B. .51~.70m/about 65% off";
  option_Q7[2] = "C. .81~1.00m/about 50% off";
  option_Q7[3] = "D. 1.11~1.30m/about 25% off";


  //******************************Q2***************************//
  choice2 = int(random(0, num-1));
  counterL2_1 = 0;
  counterL2_2 = 0;
  counterL2_3 = 0;

  //********************************Q3*****************************//
  choice3 = int(random(0, num-1));
  counterL3_1 = 0;
  counterL3_2 = 0;
  counterL3_3 = 0;

  //flip counter
  counterC = 0;

  //final
  //end = loadFont("PTMono-Bold-36.vlw");
  endT = "In fact, \nthe discount for each haunted house is \nnot that easy to guess!";
}

//***********************************************Draw**************************************************//
void draw() {
  //*************************Stage Control********************//
  //stage control
  if (stageNum == 0) {
    coverPage();
  } else if (stageNum == 1) {
    background(230, 230, 250);
    Q1(choice);

    //type writer sound
    //player1_L1.play();

    //load rain drop
    rainDrop();
  } else if (stageNum == 2) {
    stop();

    //prevent duplication
    while (choice2 == choice) {
      choice2 = int(random(0, num-1));
    }

    //display Q2
    background(230, 230, 250);
    Q2(choice2);
    //player1_L2.play();

    //load rain drop
    rainDrop();
  } else if (stageNum == 3) {
    stop();

    //prevent duplication
    while (choice3 == choice2 || choice3 == choice) {
      choice3 = int(random(0, num-1));
    }

    //display Q3
    background(230, 230, 250);
    Q3(choice3);
    //player1_L3.play();

    //load rain drop
    rainDrop();
  } else if (stageNum == 4) {
    end();
  }

}

//***********************music stop*******************************//
//void stop() {
//  if (stopM == 0) {
//    player2_L1.close();
//    heartM_L1.stop();
//  } else if (stopM == 1) {
//    player2_L2.close();
//    heartM_L2.stop();
//  } else if (stopM == 2) {
//    player2_L3.close();
//    heartM_L2.stop();
//  }
//}

//*******************************Cover Page**********************************//

void coverPage() {
  fade += 1;
  tint(255, fade);
  image(pic, 0, 0, width, height);

  //font
  textLeading(100);
  textAlign(LEFT);
  textSize(26);
  fill(255); 
  text(coverIntro, 40, 90, width - 550, height);
  text(click_to_flip, 40, 440, width - 550, height);

  textSize(40);
  fill(255, 0, 0);
  text(dare, 40, 320, width - 550, height);

  //flip
  if (mousePressed) {
    stageNum = 1;
  }
}

//***********************************Q1*****************************************//
int Q1(int choiceQ1) {
  boolean flipCheck = false;
  textLeading(100);
  textAlign(LEFT);
  textSize(24);
  fill(0); 
  switch(choiceQ1) {
  case 0:
    if (counterL1_1 < intro[0].length() && frameCount % 2 == 0)
      counterL1_1 ++;
    text(intro[0].substring(0, counterL1_1), 20, 20, width - 50, height);

    if (counterL1_1 >= intro[0].length() && counterL1_2 < normalP[0].length() && frameCount % 3 == 0)
      counterL1_2 ++;
    text(normalP[0].substring(0, counterL1_2), 20, 250, width - 50, height);

    if (counterL1_2 >= normalP[0].length() && counterL1_3 < question.length() && frameCount % 3 == 0)
      counterL1_3 ++;
    text(question.substring(0, counterL1_3), 20, 310, width - 50, height);

    if (counterL1_3 >= normalP[0].length()) {
      //typeM_L1.stop();
      //player2_L1.play();

      Q1_optionBox();

      fill(255);
      text(option_Q1[0], 20, 390);
      text(option_Q1[1], 420, 390);
      text(option_Q1[2], 20, 430);
      text(option_Q1[3], 420, 430);
    }

    break;
  case 1:
    if (counterL1_1 < intro[1].length() && frameCount % 2 == 0)
      counterL1_1++;
    text(intro[1].substring(0, counterL1_1), 20, 20, width - 50, height);

    if (counterL1_1 >= intro[1].length() && counterL1_2 < normalP[1].length() && frameCount % 3 == 0)
      counterL1_2 ++;
    text(normalP[1].substring(0, counterL1_2), 20, 250, width - 50, height);

    if (counterL1_2 >= normalP[1].length() && counterL1_3 < question.length() && frameCount % 3 == 0)
      counterL1_3 ++;
    text(question.substring(0, counterL1_3), 20, 310, width - 50, height);

    if (counterL1_3 >= normalP[0].length()) {
      //typeM_L1.stop();
      //player2_L1.play();

      Q2_optionBox();

      fill(255);
      text(option_Q2[0], 20, 390);
      text(option_Q2[1], 420, 390);
      text(option_Q2[2], 20, 430);
      text(option_Q2[3], 420, 430);
    }

    break;

  case 2:
    if (counterL1_1 < intro[2].length() && frameCount % 2 == 0)
      counterL1_1++;
    text(intro[2].substring(0, counterL1_1), 20, 20, width - 50, height);

    if (counterL1_1 >= intro[2].length() && counterL1_2 < normalP[2].length() && frameCount % 3 == 0)
      counterL1_2 ++;
    text(normalP[2].substring(0, counterL1_2), 20, 250, width - 50, height);

    if (counterL1_2 >= normalP[2].length() && counterL1_3 < question.length() && frameCount % 3 == 0)
      counterL1_3 ++;
    text(question.substring(0, counterL1_3), 20, 310, width - 50, height);

    if (counterL1_3 >= normalP[1].length()) {
      //typeM_L1.stop();
      //player2_L1.play();

      Q3_optionBox();

      fill(255);
      text(option_Q3[0], 20, 390);
      text(option_Q3[1], 420, 390);
      text(option_Q3[2], 20, 430);
      text(option_Q3[3], 420, 430);
    }
    break;

  case 3:
    if (counterL1_1 < intro[3].length() && frameCount % 2 == 0)
      counterL1_1++;
    text(intro[3].substring(0, counterL1_1), 20, 20, width - 50, height);

    if (counterL1_1 >= intro[3].length() && counterL1_2 < normalP[3].length() && frameCount % 3 == 0)
      counterL1_2 ++;
    text(normalP[3].substring(0, counterL1_2), 20, 250, width - 50, height);

    if (counterL1_2 >= normalP[3].length() && counterL1_3 < question.length() && frameCount % 3 == 0)
      counterL1_3 ++;
    text(question.substring(0, counterL1_3), 20, 310, width - 50, height);

    if (counterL1_3 >= normalP[2].length()) {
      Q4_optionBox();

      fill(255);
      text(option_Q4[0], 20, 390);
      text(option_Q4[1], 420, 390);
      text(option_Q4[2], 20, 430);
      text(option_Q4[3], 420, 430);
      //typeM_L1.stop();
      //player2_L1.play();
    }
    break;

  case 4:
    if (counterL1_1 < intro[4].length() && frameCount % 2 == 0)
      counterL1_1++;
    text(intro[4].substring(0, counterL1_1), 20, 20, width - 50, height);

    if (counterL1_1 >= intro[4].length() && counterL1_2 < normalP[4].length() && frameCount % 3 == 0)
      counterL1_2 ++;
    text(normalP[4].substring(0, counterL1_2), 20, 250, width - 50, height);

    if (counterL1_2 >= normalP[4].length() && counterL1_3 < question.length() && frameCount % 3 == 0)
      counterL1_3 ++;
    text(question.substring(0, counterL1_3), 20, 310, width - 50, height);

    if (counterL1_3 >= normalP[3].length()) {
      Q5_optionBox();

      fill(255);
      text(option_Q5[0], 20, 390);
      text(option_Q5[1], 420, 390);
      text(option_Q5[2], 20, 430);
      text(option_Q5[3], 420, 430);
      //typeM_L1.stop();
      //player2_L1.play();
    }
    break;

  case 5:
    if (counterL1_1 < intro[5].length() && frameCount % 2 == 0)
      counterL1_1++;
    text(intro[5].substring(0, counterL1_1), 20, 20, width - 50, height);

    if (counterL1_1 >= intro[5].length() && counterL1_2 < normalP[5].length() && frameCount % 3 == 0)
      counterL1_2 ++;
    text(normalP[5].substring(0, counterL1_2), 20, 250, width - 50, height);

    if (counterL1_2 >= normalP[5].length() && counterL1_3 < question.length() && frameCount % 3 == 0)
      counterL1_3 ++;
    text(question.substring(0, counterL1_3), 20, 310, width - 50, height);

    if (counterL1_3 >= normalP[4].length()) {
      Q6_optionBox();

      fill(255);
      text(option_Q6[0], 20, 390);
      text(option_Q6[1], 420, 390);
      text(option_Q6[2], 20, 430);
      text(option_Q6[3], 420, 430);
      //typeM_L1.stop();
      //player2_L1.play();
    }
    break;

  case 6:
    if (counterL1_1 < intro[6].length() && frameCount % 2 == 0)
      counterL1_1++;
    text(intro[6].substring(0, counterL1_1), 20, 20, width - 50, height);

    if (counterL1_1 >= intro[6].length() && counterL1_2 < normalP[6].length() && frameCount % 3 == 0)
      counterL1_2 ++;
    text(normalP[6].substring(0, counterL1_2), 20, 250, width - 50, height);

    if (counterL1_2 >= normalP[6].length() && counterL1_3 < question.length() && frameCount % 3 == 0)
      counterL1_3 ++;
    text(question.substring(0, counterL1_3), 20, 310, width - 50, height);

    if (counterL1_3 >= normalP[5].length()) {
      Q7_optionBox();

      fill(255);
      text(option_Q7[0], 20, 390);
      text(option_Q7[1], 420, 390);
      text(option_Q7[2], 20, 430);
      text(option_Q7[3], 420, 430);
      //typeM_L1.stop();
      //player2_L1.play();
    }
    break;
  }

  if (stageNum == 1 && key == '1') {
    flipCheck = true;
  }

  if (flipCheck == true && counterC >= flip1.length()) {
    i = 0;
    stageNum = 2;
    stopM = 0;
    counterC = 0;
  }


  return(choiceQ1);
}

//*********************************Q2**********************************//
int Q2(int choiceQ2) {
  boolean flipCheck = false;
  textLeading(100);
  textAlign(LEFT);
  textSize(24);
  fill(0); 
  switch(choiceQ2) {
  case 0:
    if (counterL2_1 < intro[0].length() && frameCount % 2 == 0)
      counterL2_1 ++;
    text(intro[0].substring(0, counterL2_1), 20, 20, width - 50, height);

    if (counterL2_1 >= intro[0].length() && counterL2_2 < normalP[0].length() && frameCount % 3 == 0)
      counterL2_2 ++;
    text(normalP[0].substring(0, counterL2_2), 20, 250, width - 50, height);

    if (counterL2_2 >= normalP[0].length() && counterL2_3 < question.length() && frameCount % 3 == 0)
      counterL2_3 ++;
    text(question.substring(0, counterL2_3), 20, 310, width - 50, height);

    if (counterL2_3 >= normalP[0].length()) {
      Q1_optionBox();

      fill(255);
      text(option_Q1[0], 20, 390);
      text(option_Q1[1], 420, 390);
      text(option_Q1[2], 20, 430);
      text(option_Q1[3], 420, 430);
      //typeM_L2.stop();
      //player2_L2.play();
    }
    break;
  case 1:
    if (counterL2_1 < intro[1].length() && frameCount % 2 == 0)
      counterL2_1++;
    text(intro[1].substring(0, counterL2_1), 20, 20, width - 50, height);

    if (counterL2_1 >= intro[1].length() && counterL2_2 < normalP[1].length() && frameCount % 3 == 0)
      counterL2_2 ++;
    text(normalP[1].substring(0, counterL2_2), 20, 250, width - 50, height);

    if (counterL2_2 >= normalP[1].length() && counterL2_3 < question.length() && frameCount % 3 == 0)
      counterL2_3 ++;
    text(question.substring(0, counterL2_3), 20, 310, width - 50, height);

    if (counterL2_3 >= normalP[0].length()) {
      Q2_optionBox();

      fill(255);
      text(option_Q2[0], 20, 390);
      text(option_Q2[1], 420, 390);
      text(option_Q2[2], 20, 430);
      text(option_Q2[3], 420, 430);
      //typeM_L2.stop();
      //player2_L2.play();
    }
    break;

  case 2:
    if (counterL2_1 < intro[2].length() && frameCount % 2 == 0)
      counterL2_1++;
    text(intro[2].substring(0, counterL2_1), 20, 20, width - 50, height);

    if (counterL2_1 >= intro[2].length() && counterL2_2 < normalP[2].length() && frameCount % 3 == 0)
      counterL2_2 ++;
    text(normalP[2].substring(0, counterL2_2), 20, 250, width - 50, height);

    if (counterL2_2 >= normalP[2].length() && counterL2_3 < question.length() && frameCount % 3 == 0)
      counterL2_3 ++;
    text(question.substring(0, counterL2_3), 20, 310, width - 50, height);

    if (counterL2_3 >= normalP[1].length()) {
      Q3_optionBox();

      fill(255);
      text(option_Q3[0], 20, 390);
      text(option_Q3[1], 420, 390);
      text(option_Q3[2], 20, 430);
      text(option_Q3[3], 420, 430);
      //typeM_L2.stop();
      //player2_L2.play();
    }
    break;

  case 3:
    if (counterL2_1 < intro[3].length() && frameCount % 2 == 0)
      counterL2_1++;
    text(intro[3].substring(0, counterL2_1), 20, 20, width - 50, height);

    if (counterL2_1 >= intro[3].length() && counterL2_2 < normalP[3].length() && frameCount % 3 == 0)
      counterL2_2 ++;
    text(normalP[3].substring(0, counterL2_2), 20, 250, width - 50, height);

    if (counterL2_2 >= normalP[3].length() && counterL2_3 < question.length() && frameCount % 3 == 0)
      counterL2_3 ++;
    text(question.substring(0, counterL2_3), 20, 310, width - 50, height);

    if (counterL2_3 >= normalP[2].length()) {
      Q4_optionBox();

      fill(255);
      text(option_Q4[0], 20, 390);
      text(option_Q4[1], 420, 390);
      text(option_Q4[2], 20, 430);
      text(option_Q4[3], 420, 430);
      //typeM_L2.stop();
      //player2_L2.play();
    }
    break;

  case 4:
    if (counterL2_1 < intro[4].length() && frameCount % 2 == 0)
      counterL2_1++;
    text(intro[4].substring(0, counterL2_1), 20, 20, width - 50, height);

    if (counterL2_1 >= intro[4].length() && counterL2_2 < normalP[4].length() && frameCount % 3 == 0)
      counterL2_2 ++;
    text(normalP[4].substring(0, counterL2_2), 20, 250, width - 50, height);

    if (counterL2_2 >= normalP[4].length() && counterL2_3 < question.length() && frameCount % 3 == 0)
      counterL2_3 ++;
    text(question.substring(0, counterL2_3), 20, 310, width - 50, height);

    if (counterL2_3 >= normalP[3].length()) {
      Q5_optionBox();

      fill(255);
      text(option_Q5[0], 20, 390);
      text(option_Q5[1], 420, 390);
      text(option_Q5[2], 20, 430);
      text(option_Q5[3], 420, 430);
      //typeM_L2.stop();
      //player2_L2.play();
    }
    break;

  case 5:
    if (counterL2_1 < intro[5].length() && frameCount % 2 == 0)
      counterL2_1++;
    text(intro[5].substring(0, counterL2_1), 20, 20, width - 50, height);

    if (counterL2_1 >= intro[5].length() && counterL2_2 < normalP[5].length() && frameCount % 3 == 0)
      counterL2_2 ++;
    text(normalP[5].substring(0, counterL2_2), 20, 250, width - 50, height);

    if (counterL2_2 >= normalP[5].length() && counterL2_3 < question.length() && frameCount % 3 == 0)
      counterL2_3 ++;
    text(question.substring(0, counterL2_3), 20, 310, width - 50, height);

    if (counterL2_3 >= normalP[4].length()) {
      Q6_optionBox();

      fill(255);
      text(option_Q6[0], 20, 390);
      text(option_Q6[1], 420, 390);
      text(option_Q6[2], 20, 430);
      text(option_Q6[3], 420, 430);
      //typeM_L2.stop();
      //player2_L2.play();
    }
    break;

  case 6:
    if (counterL2_1 < intro[6].length() && frameCount % 2 == 0)
      counterL2_1++;
    text(intro[6].substring(0, counterL2_1), 20, 20, width - 50, height);

    if (counterL2_1 >= intro[6].length() && counterL2_2 < normalP[6].length() && frameCount % 3 == 0)
      counterL2_2 ++;
    text(normalP[6].substring(0, counterL2_2), 20, 250, width - 50, height);

    if (counterL2_2 >= normalP[6].length() && counterL2_3 < question.length() && frameCount % 3 == 0)
      counterL2_3 ++;
    text(question.substring(0, counterL2_3), 20, 310, width - 50, height);

    if (counterL2_3 >= normalP[5].length()) {
      Q7_optionBox();

      fill(255);
      text(option_Q6[0], 20, 390);
      text(option_Q6[1], 420, 390);
      text(option_Q6[2], 20, 430);
      text(option_Q6[3], 420, 430);
      //typeM_L2.stop();
      //player2_L2.play();
    }
    break;
  }

  if (stageNum == 2 && key == '2') {
    flipCheck = true;
  }

  if (flipCheck == true && counterC >= flip2.length()) {
    stageNum = 3;
    stopM = 1;
    i = 0;
    counterC = 0;
    flipCheck = false;
  }

  return(choiceQ2);
}

//**************************************Q3***********************************//
void Q3(int choiceQ3) {
  boolean flipCheck = false;
  textLeading(100);
  textAlign(LEFT);
  textSize(24);
  fill(0); 
  switch(choiceQ3) {
  case 0:
    if (counterL3_1 < intro[0].length() && frameCount % 2 == 0)
      counterL3_1 ++;
    text(intro[0].substring(0, counterL3_1), 20, 20, width - 50, height);

    if (counterL3_1 >= intro[0].length() && counterL3_2 < normalP[0].length() && frameCount % 3 == 0)
      counterL3_2 ++;
    text(normalP[0].substring(0, counterL3_2), 20, 250, width - 50, height);

    if (counterL3_2 >= normalP[0].length() && counterL3_3 < question.length() && frameCount % 3 == 0)
      counterL3_3 ++;
    text(question.substring(0, counterL3_3), 20, 310, width - 50, height);

    if (counterL3_3 >= normalP[0].length()) {
      Q1_optionBox();

      fill(255);
      text(option_Q1[0], 20, 390);
      text(option_Q1[1], 420, 390);
      text(option_Q1[2], 20, 430);
      text(option_Q1[3], 420, 430);
      //typeM_L3.stop();
      //player2_L3.play();
    }
    break;
  case 1:
    if (counterL3_1 < intro[1].length() && frameCount % 2 == 0)
      counterL3_1++;
    text(intro[1].substring(0, counterL3_1), 20, 20, width - 50, height);

    if (counterL3_1 >= intro[1].length() && counterL3_2 < normalP[1].length() && frameCount % 3 == 0)
      counterL3_2 ++;
    text(normalP[1].substring(0, counterL3_2), 20, 250, width - 50, height);

    if (counterL3_2 >= normalP[1].length() && counterL3_3 < question.length() && frameCount % 3 == 0)
      counterL3_3 ++;
    text(question.substring(0, counterL3_3), 20, 310, width - 50, height);

    if (counterL3_3 >= normalP[0].length()) {
      Q2_optionBox();

      fill(255);
      text(option_Q2[0], 20, 390);
      text(option_Q2[1], 420, 390);
      text(option_Q2[2], 20, 430);
      text(option_Q2[3], 420, 430);
      //typeM_L3.stop();
      //player2_L3.play();
    }
    break;

  case 2:
    if (counterL3_1 < intro[2].length() && frameCount % 2 == 0)
      counterL3_1++;
    text(intro[2].substring(0, counterL3_1), 20, 20, width - 50, height);

    if (counterL3_1 >= intro[2].length() && counterL3_2 < normalP[2].length() && frameCount % 3 == 0)
      counterL3_2 ++;
    text(normalP[2].substring(0, counterL3_2), 20, 250, width - 50, height);

    if (counterL3_2 >= normalP[2].length() && counterL3_3 < question.length() && frameCount % 3 == 0)
      counterL3_3 ++;
    text(question.substring(0, counterL3_3), 20, 310, width - 50, height);

    if (counterL3_3 >= normalP[1].length()) {
      Q3_optionBox();

      fill(255);
      text(option_Q3[0], 20, 390);
      text(option_Q3[1], 420, 390);
      text(option_Q3[2], 20, 430);
      text(option_Q3[3], 420, 430);
      //typeM_L3.stop();
      //player2_L3.play();
    }
    break;

  case 3:
    if (counterL3_1 < intro[3].length() && frameCount % 2 == 0)
      counterL3_1++;
    text(intro[3].substring(0, counterL3_1), 20, 20, width - 50, height);

    if (counterL3_1 >= intro[3].length() && counterL3_2 < normalP[3].length() && frameCount % 3 == 0)
      counterL3_2 ++;
    text(normalP[3].substring(0, counterL3_2), 20, 250, width - 50, height);

    if (counterL3_2 >= normalP[3].length() && counterL3_3 < question.length() && frameCount % 3 == 0)
      counterL3_3 ++;
    text(question.substring(0, counterL3_3), 20, 310, width - 50, height);

    if (counterL3_3 >= normalP[2].length()) {
      Q4_optionBox();

      fill(255);
      text(option_Q4[0], 20, 390);
      text(option_Q4[1], 420, 390);
      text(option_Q4[2], 20, 430);
      text(option_Q4[3], 420, 430);
      //typeM_L3.stop();
      //player2_L3.play();
    }
    break;

  case 4:
    if (counterL3_1 < intro[4].length() && frameCount % 2 == 0)
      counterL3_1++;
    text(intro[4].substring(0, counterL3_1), 20, 20, width - 50, height);

    if (counterL3_1 >= intro[4].length() && counterL3_2 < normalP[4].length() && frameCount % 3 == 0)
      counterL3_2 ++;
    text(normalP[4].substring(0, counterL3_2), 20, 250, width - 50, height);

    if (counterL3_2 >= normalP[4].length() && counterL3_3 < question.length() && frameCount % 3 == 0)
      counterL3_3 ++;
    text(question.substring(0, counterL3_3), 20, 310, width - 50, height);

    if (counterL3_3 >= normalP[3].length()) {
      Q5_optionBox();

      fill(255);
      text(option_Q5[0], 20, 390);
      text(option_Q5[1], 420, 390);
      text(option_Q5[2], 20, 430);
      text(option_Q5[3], 420, 430);
      //typeM_L3.stop();
      //player2_L3.play();
    }
    break;

  case 5:
    if (counterL3_1 < intro[5].length() && frameCount % 2 == 0)
      counterL3_1++;
    text(intro[5].substring(0, counterL3_1), 20, 20, width - 50, height);

    if (counterL3_1 >= intro[5].length() && counterL3_2 < normalP[5].length() && frameCount % 3 == 0)
      counterL3_2 ++;
    text(normalP[5].substring(0, counterL3_2), 20, 250, width - 50, height);

    if (counterL3_2 >= normalP[5].length() && counterL3_3 < question.length() && frameCount % 3 == 0)
      counterL3_3 ++;
    text(question.substring(0, counterL3_3), 20, 310, width - 50, height);

    if (counterL3_3 >= normalP[4].length()) {
      Q6_optionBox();

      fill(255);
      text(option_Q6[0], 20, 390);
      text(option_Q6[1], 420, 390);
      text(option_Q6[2], 20, 430);
      text(option_Q6[3], 420, 430);
      //typeM_L3.stop();
      //player2_L3.play();
    }
    break;

  case 6:
    if (counterL3_1 < intro[6].length() && frameCount % 2 == 0)
      counterL3_1++;
    text(intro[6].substring(0, counterL3_1), 20, 20, width - 50, height);

    if (counterL3_1 >= intro[6].length() && counterL3_2 < normalP[6].length() && frameCount % 3 == 0)
      counterL3_2 ++;
    text(normalP[6].substring(0, counterL3_2), 20, 250, width - 50, height);

    if (counterL3_2 >= normalP[6].length() && counterL3_3 < question.length() && frameCount % 3 == 0)
      counterL3_3 ++;
    text(question.substring(0, counterL3_3), 20, 310, width - 50, height);

    if (counterL3_3 >= normalP[5].length()) {
      Q7_optionBox();

      fill(255);
      text(option_Q7[0], 20, 390);
      text(option_Q7[1], 420, 390);
      text(option_Q7[2], 20, 430);
      text(option_Q7[3], 420, 430);
      //typeM_L3.stop();
      //player2_L3.play();
    }
    break;
  }

  if (stageNum == 3 && key == '3') {
    flipCheck = true;
  }
  if (flipCheck == true && counterC >= flip3.length()) {
    stageNum = 4;
  }
}

//******************************end********************************//
void end() {
  background(0);
  textSize(36);
  fill(255, 0, 0);
  text(endT, 20, 160);
}

//****************************Q1 option box*********************************//
//Q1 correct: D
void Q1_optionBox() {
  //option box
  fill(100);
  rect(15, 360, 385, 35, 10);
  rect(415, 360, 385, 35, 10);
  rect(15, 400, 385, 35, 10);
  rect(415, 400, 385, 35, 10);

  //right answer or wrong answer
  if (mouseX >= 15 && mouseX <= 400 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(15, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(415, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 15 && mouseX <= 400 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(15, 400, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(415, 400, 385, 35, 10);
    if (mousePressed) {
      i = 2;
    }
  }

  if (i == 1 && stageNum == 1) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    //player3_L1.play();
    fill(0);
    textSize(24);
    text(flip1, 580, 510);
  } else if (i == 1 && stageNum == 2)
  {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    //player3_L2.play();
    fill(0);
    textSize(24);
    text(flip2, 580, 510);
  } else if (i == 1 && stageNum == 3) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    //player3_L3.play();
    fill(0);
    textSize(24);
    text(flip3, 580, 510);
  } else if (i == 2 && stageNum == 1) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    fill(0);
    textSize(24);
    text(flip1, 580, 510);
  } else if (i == 2 && stageNum == 2) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 2 && stageNum == 3) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  }

  if (i == 1 || i == 2) {
    counterC ++;
  }
}


//Q2 correct: A
void Q2_optionBox() {
  //option box
  fill(100);
  rect(15, 360, 385, 35, 10);
  rect(415, 360, 385, 35, 10);
  rect(15, 400, 385, 35, 10);
  rect(415, 400, 385, 35, 10);

  //right answer or wrong answer
  if (mouseX >= 15 && mouseX <= 400 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(15, 360, 385, 35, 10);
    if (mousePressed) {
      i = 2;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(415, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 15 && mouseX <= 400 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(15, 400, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(415, 400, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  }

  if (i == 1 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 360, 385, 35, 10);
    //player3_L1.play();
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 1 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 360, 385, 35, 10);
    //player3_L2.play();
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 1 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 360, 385, 35, 10);
    //player3_L3.play();
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  } else if (i == 2 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 360, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 2 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 360, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 2 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 360, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  }

  if (i == 1 || i == 2) {
    counterC ++;
  }
}


//Q3 correct: C
void Q3_optionBox() {
  //option box
  fill(100);
  rect(15, 360, 385, 35, 10);
  rect(415, 360, 385, 35, 10);
  rect(15, 400, 385, 35, 10);
  rect(415, 400, 385, 35, 10);

  //right answer or wrong answer
  if (mouseX >= 15 && mouseX <= 400 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(15, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(415, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 15 && mouseX <= 400 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(15, 400, 385, 35, 10);
    if (mousePressed) {
      i = 2;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(415, 400, 385, 35, 10);
  }

  if (i == 1 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    //player3_L1.play();
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 1 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    //player3_L2.play();
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 1 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    //player3_L3.play();
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  } else if (i == 2 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 2 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 2 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  }

  if (i == 1 || i == 2) {
    counterC ++;
  }
}

//Q4 correct: C
void Q4_optionBox() {
  //option box
  fill(100);
  rect(15, 360, 385, 35, 10);
  rect(415, 360, 385, 35, 10);
  rect(15, 400, 385, 35, 10);
  rect(415, 400, 385, 35, 10);

  //right answer or wrong answer
  if (mouseX >= 15 && mouseX <= 400 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(15, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(415, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 15 && mouseX <= 400 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(15, 400, 385, 35, 10);
    if (mousePressed) {
      i = 2;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(415, 400, 385, 35, 10);
  }

  if (i == 1 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    //player3_L1.play();
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 1 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    //player3_L2.play();
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 1 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    //player3_L3.play();
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  } else if (i == 2 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 2 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 2 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  }

  if (i == 1 || i == 2) {
    counterC ++;
  }
}

//Q5 correct: D
void Q5_optionBox() {
  //option box
  fill(100);
  rect(15, 360, 385, 35, 10);
  rect(415, 360, 385, 35, 10);
  rect(15, 400, 385, 35, 10);
  rect(415, 400, 385, 35, 10);

  //right answer or wrong answer
  if (mouseX >= 15 && mouseX <= 400 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(15, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(415, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 15 && mouseX <= 400 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(15, 400, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(415, 400, 385, 35, 10);
    if (mousePressed) {
      i = 2;
    }
  }

  if (i == 1 && stageNum == 1) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    //player3_L1.play();
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 1 && stageNum == 2) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    //player3_L2.play();
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 1 && stageNum == 3) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    //player3_L3.play();
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  } else if (i == 2 && stageNum == 1) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 2 && stageNum == 2) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 2 && stageNum == 3) {
    fill(0, 255, 0);
    rect(415, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  }

  if (i == 1 || i == 2) {
    counterC ++;
  }
}

//Q6 correct: C
void Q6_optionBox() {
  //option box
  fill(100);
  rect(15, 360, 385, 35, 10);
  rect(415, 360, 385, 35, 10);
  rect(15, 400, 385, 35, 10);
  rect(415, 400, 385, 35, 10);

  //right answer or wrong answer
  if (mouseX >= 15 && mouseX <= 400 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(15, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(415, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 15 && mouseX <= 400 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(15, 400, 385, 35, 10);
    if (mousePressed) {
      i = 2;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(415, 400, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  }

  if (i == 1 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    //player3_L1.play();
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 1 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    //player3_L2.play();
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 1 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    //player3_L3.play();
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  } else if (i == 2 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 2 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 2 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 400, 385, 35, 10);
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  }

  if (i == 1 || i == 2) {
    counterC ++;
  }
}

//Q7 correct: C
void Q7_optionBox() {
  //option box
  fill(100);
  rect(15, 360, 385, 35, 10);
  rect(415, 360, 385, 35, 10);
  rect(15, 400, 385, 35, 10);
  rect(415, 400, 385, 35, 10);

  //right answer or wrong answer
  if (mouseX >= 15 && mouseX <= 400 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(15, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 360 && mouseY <= 395) { 
    fill(255, 0, 0);
    rect(415, 360, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  } else if (mouseX >= 15 && mouseX <= 400 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(15, 400, 350, 35, 10);
    if (mousePressed) {
      i = 2;
    }
  } else if (mouseX >= 415 && mouseX <= 800 && mouseY >= 400 && mouseY <= 435) { 
    fill(255, 0, 0);
    rect(415, 400, 385, 35, 10);
    if (mousePressed) {
      i = 1;
    }
  }

  if (i == 1 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 400, 350, 35, 10);
    //player3_L1.play();
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 1 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 400, 350, 35, 10);
    //player3_L2.play();
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 1 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 400, 350, 35, 10);
    //player3_L3.play();
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  } else if (i == 2 && stageNum == 1) {
    fill(0, 255, 0);
    rect(15, 400, 350, 35, 10);
    fill(0);
    textSize( 24);
    text(flip1, 580, 510);
  } else if (i == 2 && stageNum == 2) {
    fill(0, 255, 0);
    rect(15, 400, 350, 35, 10);
    fill(0);
    textSize( 24);
    text(flip2, 580, 510);
  } else if (i == 2 && stageNum == 3) {
    fill(0, 255, 0);
    rect(15, 400, 350, 35, 10);
    fill(0);
    textSize( 24);
    text(flip3, 580, 510);
  }

  if (i == 1 || i == 2) {
    counterC ++;
  }
}


//****************************raindrop function***********************//
void rainDrop() {
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
}

//*******************************raindrop class**********************//
class Drop {
  float x;
  float y;
  float z;
  float len;
  float yspeed;

  Drop() {
    x  = random(width);
    y  = random(-500, -50);
    z  = random(0, 20);
    len = map(z, 0, 20, 10, 20);
    yspeed  = map(z, 0, 20, 1, 20);
  }

  void fall() {
    y = y + yspeed;
    float grav = map(z, 0, 20, 0, 0.2);
    yspeed = yspeed + grav;

    if (y > height) {
      y = random(-200, -100);
      yspeed = map(z, 0, 20, 4, 10);
    }
  }
  void show() {
    float thick = map(z, 0, 20, 1, 5);
    strokeWeight(thick);
    stroke(255, 0, 0, 150);
    line(x, y, x, y+len);
  }
}
