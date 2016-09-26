//
//  ListApi.h
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "AFNetworking.h"
#import "ListAvfm.h"
#import "ListRootClass.h"
#import "ListViewModel.h"
#import "ListViewModel.h"
#import <Foundation/Foundation.h>
#import <SDWebImage/UIImageView+WebCache.h>

#define APPKEY @"f6bcd8e8bb853890f4fb2be8ce0418fa"
#define BASE_URL @"https://aviewfrommyseat.com/avf/api"
#define LIST_METHOD @"/featured.php"
#define DETAIL_METHOD @"/venue.php"

@protocol Network
- ( NSString * _Nonnull )url;
- (void) fetch :(NSString * _Nonnull)URLString
     parameters:(id _Nullable)parameters
        success:(nullable void (^)(NSMutableArray<id> * _Nonnull result))success
        failure:(nullable void (^)(NSURLSessionTask* _Nullable task, NSError * _Nonnull error))failure;
@end

@interface ListApi : NSObject
+ (_Nonnull instancetype)shared;
- (void) downloadFeatureVenues :(NSString * _Nonnull)page
                        success:(nullable void (^)(NSMutableArray<id> * _Nonnull venues))__weak success
                        failure:(nullable void (^)(NSURLSessionTask* _Nullable task, NSError * _Nonnull error))failure;
@end
