//
//  WHXKeychain.h
//  KeyChain
//
//  Created by 武鹤欣 on 16/5/13.
//  Copyright © 2016年 武鹤欣. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WHXKeychain : NSObject
+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;
@end
