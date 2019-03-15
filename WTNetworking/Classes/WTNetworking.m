//
//  WTNetworking.m
//  WTNetworking_Example
//
//  Created by windtersharp on 2019/3/15.
//  Copyright © 2019 windtersharp. All rights reserved.
//

#import "WTNetworking.h"
#import "AFNetworking.h"
#import "WTTest.h"

@interface WTNetworking()

@property (nonatomic, strong) AFHTTPSessionManager *HTTPSessionManager;  // AFNetworking 和 服务器交互

@end



@implementation WTNetworking

- (void)printNetwork {
    NSLog(@"network: %@",self.HTTPSessionManager.description);
    WTOPENSSL_interface();
}

- (AFHTTPSessionManager *)HTTPSessionManager {
    if (!_HTTPSessionManager) {
        _HTTPSessionManager = [AFHTTPSessionManager manager] ;
        _HTTPSessionManager.requestSerializer = [AFHTTPRequestSerializer serializer];
        _HTTPSessionManager.requestSerializer.stringEncoding =CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingUTF8);
        _HTTPSessionManager.requestSerializer.timeoutInterval = 10.0;
        
        _HTTPSessionManager.responseSerializer = [AFJSONResponseSerializer serializer];
        _HTTPSessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", @"text/json", @"application/json", @"text/javascript", @"text/html",  nil];
        
        _HTTPSessionManager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        
    }
    return _HTTPSessionManager;
}

@end
