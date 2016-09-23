//
//  ViewController.m
//  VivaDecora
//
//  Created by Ezequiel on 9/22/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListViewController.h"
#import "AFNetworking.h"
#import "RootClass.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self teste];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setup {
}

- (void)teste {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://aviewfrommyseat.com/avf/api/featured.php?appkey=f6bcd8e8bb853890f4fb2be8ce0418fa" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
      //  NSLog(@"JSON: %@", responseObject);
        RootClass *c = [[RootClass alloc] initWithDictionary:responseObject error:nil];
        [c.avfms enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * _Nonnull stop) {
            Avfm *d = [[Avfm alloc]initWithDictionary:obj error:nil];
            NSLog(@"%@", d.section);
        }];
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}


@end
