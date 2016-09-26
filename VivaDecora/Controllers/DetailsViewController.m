//
//  DetailsViewController.m
//  VivaDecora
//
//  Created by Ezequiel on 25/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView setContentInset:UIEdgeInsetsMake(-20, 0, 0, 0)];
    [self setAutomaticallyAdjustsScrollViewInsets:NO];
    NSString *qwer = [self.venue stringByReplacingOccurrencesOfString:@" " withString:@"+"];
    [self downloadData:qwer];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)downloadData:(NSString *)venue {
  
    [[DetailsApi shared]downloadDetails:self.venue success:^(NSMutableArray<id> * _Nonnull details) {
        NSLog(@"%@", details);
    } failure:^(NSURLSessionTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}

@end
