//
//  WHXKeychainManager.m
//  KeyChain
//
//  Created by 武鹤欣 on 16/5/13.
//  Copyright © 2016年 武鹤欣. All rights reserved.
//

#import "WHXKeychainManager.h"
#import "WHXKeychain.h"
@implementation WHXKeychainManager

// 定义的key
NSString * const KEY_IN_KEYCHAIN = @"com.baicar.app.usernamepassword";
NSString * const KEY_USERNAME = @"com.baicar.app.username";
NSString * const KEY_PASSWORD = @"com.baicar.app.password";

+(void)savePsd:(NSString *)password username:(NSString *)username
{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:password forKey:KEY_PASSWORD];
    [usernamepasswordKVPairs setObject:username forKey:KEY_USERNAME];
    [WHXKeychain save:KEY_IN_KEYCHAIN data:usernamepasswordKVPairs];
}

+(id)readPassWordAndUsername
{
    NSMutableDictionary *usernamepasswordKVPair = (NSMutableDictionary *)[WHXKeychain load:KEY_IN_KEYCHAIN];
    NSString *psd = [usernamepasswordKVPair objectForKey:KEY_PASSWORD];
    NSString *user = [usernamepasswordKVPair objectForKey:KEY_USERNAME];
    NSString *userAndPsd = [NSString stringWithFormat:@"用户名：%@   密码：%@",user,psd];
    return userAndPsd;
}

+(void)deletePassWord
{
    [WHXKeychain delete:KEY_IN_KEYCHAIN];
}

@end
