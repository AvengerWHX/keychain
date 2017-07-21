//
//  WHXKeychainManager.h
//  KeyChain
//
//  Created by 武鹤欣 on 16/5/13.
//  Copyright © 2016年 武鹤欣. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WHXKeychainManager : NSObject

/**
 *    @brief    存储密码
 *
 *    @param     password     密码内容
 */
+(void)savePsd:(NSString *)password username:(NSString *)username;

/**
 *    @brief    读取密码
 *
 *    @return    密码内容
 */
+(id)readPassWordAndUsername;

/**
 *    @brief    删除密码数据
 */
+(void)deletePassWord;

@end
