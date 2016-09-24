//
//  ListApi.h
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Avfm.h"
#import "RootClass.h"
#import "AFNetworking.h"
#import "ListViewModel.h"

@interface ListApi : NSObject

- (void) download :(NSString * _Nonnull)URLString
        parameters:(id _Nullable)parameters
           success:(nullable void (^)(NSMutableArray<ListViewModel *> * _Nonnull result))success
           failure:(nullable void (^)(NSURLSessionTask* _Nullable task, NSError * _Nonnull error))failure;
@end
