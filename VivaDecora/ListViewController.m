//
//  ViewController.m
//  VivaDecora
//
//  Created by Ezequiel on 9/22/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListViewController.h"
#import "AFNetworking.h"
#import "ListRootClass.h"
#import "ListApi.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.refreshControl = [[UIRefreshControl alloc] init];
    [self.refreshControl addTarget:self action:@selector(startRefresh:)
             forControlEvents:UIControlEventValueChanged];
    [self.collectionView addSubview:_refreshControl];
    [self showLoading];
    [self downloadFeatureVenues];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)startRefresh: (UIRefreshControl *)control {
    [self downloadFeatureVenues];
}

-(void)downloadData{
    [self downloadFeatureVenues];
}

- (void)downloadFeatureVenues {
    
    [[ListApi shared]downloadFeatureVenues:@"50" success:^(NSMutableArray<id> * _Nonnull venues) {
        self.manager = [[ListViewManager alloc]initWithViewModels: (NSMutableArray<ListViewModel*>*)venues];
        [[self collectionView]reloadData];
        [self dismissLoading];
        [[self refreshControl]endRefreshing];
    } failure:^(NSURLSessionTask * _Nullable task, NSError * _Nonnull error) {
        [self dismissLoading];
        [self showErrorWithStatus:error.description];
    }];
}




@end
