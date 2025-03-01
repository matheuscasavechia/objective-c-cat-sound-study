//
//  ViewController.h
//  MyApp
//
//  Created by Matheus Casavechia on 15/01/25.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    
    SystemSoundID soundID;
    
}

@property (weak, nonatomic) IBOutlet UILabel *label;


- (IBAction)cat:(id)sender;


@end

