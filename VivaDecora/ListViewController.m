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
    ListApi *api = [[ListApi alloc]init];
    
    [api download:@"" parameters:nil success:^(NSMutableArray<ListViewModel *> * _Nonnull result) {
        self.manager = [[ListViewManager alloc]initWithViewModels:result];
        [[self collectionView]reloadData];
    } failure:^(NSURLSessionTask * _Nullable task, NSError * _Nonnull error) {
        
    }];

}




@end
