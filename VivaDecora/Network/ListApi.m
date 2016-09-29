//
//  ListApi.m
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListApi.h"

@interface ListApi()<Network>
@end

@implementation ListApi
{
    ListViewModel *model;
    NSMutableArray<ListViewModel*> *result;
}


+ (instancetype)shared
{
    static ListApi *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[ListApi alloc] init];
    });
    return shared;
}


- (void) downloadFeatureVenues :(NSString * _Nonnull)page
        success:(nullable void (^)(NSMutableArray<id> * _Nonnull venues))__weak success
        failure:(nullable void (^)(NSURLSessionTask* _Nullable task, NSError * _Nonnull error))failure{
    
    [result removeAllObjects];
    NSDictionary *params = [NSDictionary dictionaryWithObjects:@[APPKEY, page]
                                                       forKeys:@[@"appkey", @"page"]];
            
    [self fetch:[self url] parameters:params success:^(NSMutableArray<id> * _Nonnull venues) {
        success(venues);
    } failure:^(NSURLSessionTask * _Nullable task, NSError * _Nonnull error) {
        failure(task, error);
    }];
}

-(void)fetch:(NSString *)URLString parameters:(id)parameters success:(void (^)(NSMutableArray<id> * _Nonnull result))success failure:(void (^)(NSURLSessionTask * _Nullable task, NSError * _Nonnull error))failure{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:URLString parameters:parameters progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        result = [[NSMutableArray alloc]init];
        ListRootClass *c = [[ListRootClass alloc] initWithDictionary:responseObject error:nil];
        [c.avfms enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * _Nonnull stop) {
            ListAvfm *d = [[ListAvfm alloc]initWithDictionary:obj error:nil];
            model = [[ListViewModel alloc]initWithModel:d];
            [result addObject:model];
        }];
        success((id)result);
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        failure(operation, error);
    }];
    
}

-(NSString *)url{
    return [NSString stringWithFormat:@"%@%@", BASE_URL, LIST_METHOD];
}

- (void)createViewModel {
    
}

@end
