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
    
    [[ListApi shared]downloadFeatureVenues:@"50" success:^(NSMutableArray<id> * _Nonnull venues) {
        self.manager = [[ListViewManager alloc]initWithViewModels: (NSMutableArray<ListViewModel*>*)venues];
        [[self collectionView]reloadData];
    } failure:^(NSURLSessionTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}




@end
