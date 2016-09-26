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
- (void)showLoadingWithStatus:(NSString *)status;
- (void)showSuccessWithStatus:(NSString *)status;
- (void)showErrorWithStatus:(NSString *)status;
- (void)dismissLoading;

@end
