//
//  ViewController.m
//  KeyChain
//
//  Created by 武鹤欣 on 16/5/13.
//  Copyright © 2016年 武鹤欣. All rights reserved.
//

#import "ViewController.h"
#import "WHXKeychainManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)settingButton:(id)sender {
    
    [WHXKeychainManager savePsd:_textfield.text username:@"武鹤欣"];
    _psdLabel.text = [WHXKeychainManager readPassWordAndUsername];
    
}
@end
