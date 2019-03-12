//
//  WTTest.h
//  WTNetworking_Example
//
//  Created by windtersharp on 2019/3/12.
//  Copyright © 2019 windtersharp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

NS_ASSUME_NONNULL_BEGIN

@interface WTTest : NSObject

@property (nonatomic, strong) AFHTTPSessionManager *HTTPSessionManager;  // AFNetworking 和 服务器交互

- (void)printNetwork;

@end

NS_ASSUME_NONNULL_END
