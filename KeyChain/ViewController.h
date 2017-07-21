//
//  ViewController.h
//  KeyChain
//
//  Created by 武鹤欣 on 16/5/13.
//  Copyright © 2016年 武鹤欣. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *psdLabel;

@property (strong, nonatomic) IBOutlet UITextField *textfield;
- (IBAction)settingButton:(id)sender;

@end

