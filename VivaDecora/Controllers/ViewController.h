//
//  ViewController.h
//  VivaDecora
//
//  Created by Ezequiel on 26/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (void)showLoading;
- (void)dismissLoading;

-(void)downloadData;

-(void)showErrorWithStatus:(NSString  * _Nullable )status :(void (^ __nullable)(UIAlertAction  * _Nullable action))completion;
-(void)showSuccessWithStatus:(NSString  * _Nullable )status :(void (^ __nullable)(UIAlertAction  * _Nullable action))completion;


-(void)showErrorWithStatus:(NSString  * _Nullable )status;
-(void)showSuccessWithStatus:(NSString  * _Nullable )status ;

@end
