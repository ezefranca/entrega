//
//  ListApi.m
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListApi.h"
#import "ListViewModel.h"

@implementation ListApi
{
    ListViewModel *model;
    NSMutableArray<ListViewModel*> *result;
}


-(void)download:(NSString *)URLString parameters:(id)parameters success:(void (^)(NSMutableArray<ListViewModel *> * _Nonnull result))success failure:(void (^)(NSURLSessionTask * _Nullable task, NSError * _Nonnull error))failure{
    
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://aviewfrommyseat.com/avf/api/featured.php?appkey=f6bcd8e8bb853890f4fb2be8ce0418fa" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        result = [[NSMutableArray alloc]init];
        RootClass *c = [[RootClass alloc] initWithDictionary:responseObject error:nil];
        [c.avfms enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * _Nonnull stop) {
            Avfm *d = [[Avfm alloc]initWithDictionary:obj error:nil];
            model = [[ListViewModel alloc]initWithModel:d];
            [result addObject:model];
            NSLog(@"%@", model.image);
        }];
        success(result);
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        failure(operation, error);
    }];
    
}

- (void)createViewModel {
    
}

@end
