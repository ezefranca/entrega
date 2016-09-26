//
//  DetailsApi.h
//  VivaDecora
//
//  Created by Ezequiel on 26/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListApi.h"
#import "DetailsRootClass.h"
#import "DetailViewModel.h"

@interface DetailsApi : ListApi
- (void) downloadDetails :(NSString * _Nonnull)venue
                       success:(nullable void (^)(NSMutableArray<id> * _Nonnull details))__weak success
                       failure:(nullable void (^)(NSURLSessionTask* _Nullable task, NSError * _Nonnull error))failure;
@end
