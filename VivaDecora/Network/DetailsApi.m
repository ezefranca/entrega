//
//  DetailsApi.m
//  VivaDecora
//
//  Created by Ezequiel on 26/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailsApi.h"

@interface DetailsApi()<Network>
@end

@implementation DetailsApi
{
    DetailViewModel *model;
    NSMutableArray<DetailViewModel*> *result;
}

+ (instancetype)shared
{
    static DetailsApi *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[DetailsApi alloc] init];
    });
    return shared;
}


- (void)downloadDetails:(NSString * _Nonnull)venue
                        success:(nullable void (^)(NSMutableArray<id> * _Nonnull details))__weak success
                        failure:(nullable void (^)(NSURLSessionTask* _Nullable task, NSError * _Nonnull error))failure{
    
    [result removeAllObjects];
    NSDictionary *params = [NSDictionary dictionaryWithObjects:@[APPKEY, venue, @"true"]
                                                       forKeys:@[@"appkey", @"venue", @"info"]];
    [self fetch:[self url] parameters:params success:^(NSMutableArray<id> * _Nonnull details) {
        success(details);
    } failure:^(NSURLSessionTask * _Nullable task, NSError * _Nonnull error) {
        failure(task, error);
    }];
}


-(void)fetch:(NSString *)URLString parameters:(id)parameters success:(void (^)(NSMutableArray<id> * _Nonnull))success failure:(void (^)(NSURLSessionTask * _Nullable, NSError * _Nonnull))failure{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:URLString parameters:parameters progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        result = [[NSMutableArray alloc]init];
        DetailsRootClass *c = [[DetailsRootClass alloc] initWithDictionary:responseObject error:nil];
        [c.avfms enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * _Nonnull stop) {
            DetailsAvfm *d = [[DetailsAvfm alloc]initWithDictionary:obj error:nil];
            NSLog(@"%@", obj);
            model = [[DetailViewModel alloc]initWithModel:d];
            [result addObject:model];
        }];
        success((id)result);
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        failure(operation, error);
    }];
    
    
}

-(NSString *)url{
    return [NSString stringWithFormat:@"%@%@", BASE_URL, DETAIL_METHOD];
}


@end
