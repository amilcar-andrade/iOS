//
//  QuizViewController.m
//  Quiz
//
//  Created by Amilcar Andrade on 7/27/13.
//  Copyright (c) 2013 Amilcar Andrade. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //Call the init method implementedd by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        //Create two arrays and make the pointer to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //Add questions and answers to the array
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];

        [questions addObject:@"What is the capital of Mexico?"];
        [answers addObject:@"Mexico City"];

        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];

    }
    //Return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    //Step to the next question
    currentQuestionIndex++;
    
    //Last question?
    if(currentQuestionIndex == [questions count])
    {
        //Go back to the first question
        currentQuestionIndex = 0;
    }
    
    //Get the string at that index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    //Log the string to the console
    NSLog(@"displaying question: %@",question);

    //Display the string in the question field
    [questionField setText:question];
    
    //Clear the answer field, for the new question or upcoming question
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender{
    //What is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //Display it in the answer field
    [answerField setText:answer];
    
}
@end
