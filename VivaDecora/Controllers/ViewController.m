//
//  ViewController.m
//  VivaDecora
//
//  Created by Ezequiel on 26/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"
#import "AFNetworking.h"

@implementation ViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        if(status <= 0){
            [self showErrorWithStatus:@"Falha na conexão" :^(UIAlertAction * _Nullable action) {
                [self downloadData];
            }];
        }
    }];
    
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

-(void)showAlert: (NSString*)title status:(NSString *)status action:(NSString *)action :(void (^ __nullable)(UIAlertAction *action))completion
{
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:title
                                  message:status
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:action
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             completion(action);
                         }];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

-(void)showSuccessWithStatus:(NSString *)status :(void (^ __nullable)(UIAlertAction *action))completion{
    [self showAlert:@"Erro" status:status action:@"Tentar Novamente" :completion];
}

-(void)showErrorWithStatus:(NSString *)status :(void (^ __nullable)(UIAlertAction *action))completion {
    [self showAlert:@"Alerta" status:status action:@"Ok" :completion];
}

-(void)showErrorWithStatus:(NSString *)status{
    [self showAlert:@"Erro" status:status action:@"Ok" :nil];
}

-(void)showSuccessWithStatus:(NSString *)status{
    [self showAlert:@"Alerta" status:status action:@"Ok" :nil];
}

- (void)showLoading
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [SVProgressHUD show];
    });
}

- (void)dismissLoading
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [SVProgressHUD dismiss];
    });
}

- (void)downloadData{
}

@end
