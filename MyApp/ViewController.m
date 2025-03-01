//
//  ViewController.m
//  MyApp
//
//  Created by Matheus Casavechia on 15/01/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self hideLabel];
    
    
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
}


- (IBAction)cat:(id)sender {
    self.label.hidden = NO;
    AudioServicesPlaySystemSound(soundID);
    
    [NSTimer scheduledTimerWithTimeInterval:1.3 target:self selector:@selector(hideLabel) userInfo:nil repeats:NO];
}

-(void) hideLabel{
    self.label.hidden = YES;
}

@end
