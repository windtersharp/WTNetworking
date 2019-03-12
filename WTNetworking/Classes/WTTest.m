//
//  WTTest.m
//  WTNetworking_Example
//
//  Created by windtersharp on 2019/3/12.
//  Copyright © 2019 windtersharp. All rights reserved.
//

#import "WTTest.h"

@implementation WTTest

- (void)printNetwork {
    NSLog(@"network: %@",self.HTTPSessionManager.description);
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
