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
    [self downloadData:[self venueTitle:self.venue]];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


-(void)downloadData{
    [self downloadData:[self venueTitle:self.venue]];
}

- (void)downloadData:(NSString *)venue {
    [self showLoading];
    [[DetailsApi shared]downloadDetails:self.venue success:^(NSMutableArray<id> * _Nonnull details) {
        self.manager = [[DetailsViewManager alloc]initWithViewModels: (NSMutableArray<DetailViewModel*>*)details];
        [[self collectionView]reloadData];
        [self dismissLoading];
        [self dismissLoading];
        
    } failure:^(NSURLSessionTask * _Nullable task, NSError * _Nonnull error) {
        [self dismissLoading];
        [self showErrorWithStatus:error.description];
    }];
}

-(NSString *)venueTitle:(NSString *)venue {
    return [venue stringByReplacingOccurrencesOfString:@" " withString:@"+"];
}

- (IBAction)openUrlTouched:(id)sender {

}

@end
